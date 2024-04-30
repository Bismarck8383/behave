import importlib.util
import os


def load_config_module(config_relative_path):
    base_dir = os.path.dirname(os.path.realpath(__file__))  # Directorio actual de environment.py
    config_path = os.path.join(base_dir, config_relative_path)

    print(f"Loading configuration from {config_path}")  # Mensaje de depuración

    try:
        spec = importlib.util.spec_from_file_location("config_module", config_path)
        config_module = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(config_module)
        return config_module
    except FileNotFoundError:
        print(f"Error: El archivo no fue encontrado en {config_path}")
        raise
    except SyntaxError as e:
        print(f"Error de sintaxis en el archivo {config_path}: {e}")
        raise
    except Exception as e:
        print(f"Error al cargar el módulo {config_path}: {e}")
        raise


def before_all(context):
    # Ajustar las rutas para apuntar correctamente desde la ubicación de environment.py
    back_config = load_config_module('config/back/variables.py')
    # front_config = load_config_module('config/front/variables.py')

    context.back_config = back_config.credentials
    # context.front_config = front_config.credentials

    print("Backend credentials:", context.back_config)
