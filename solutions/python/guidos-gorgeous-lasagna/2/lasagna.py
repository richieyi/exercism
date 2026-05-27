"""Functions to help Guido the elf bake a chocolate layer cake."""

EXPECTED_BAKE_TIME = 40
PREPARATION_TIME = 2

def bake_time_remaining(mins):
    """Calculate bake time remaining.

    Parameters:
        mins (int): The number of minutes baked so far.

    Returns:
        int: Expected bake time - time baked so far
    """
    
    return EXPECTED_BAKE_TIME - mins

def preparation_time_in_minutes(number_of_layers):
    """Calculate prep time.

    Parameters:
        number_of_layers (int): The number of baking layers.

    Returns:
        int: Number of layers * prep time
    """
    
    return number_of_layers * PREPARATION_TIME

def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """Calculate elapsed time in minutes.

    Parameters:
        number_of_layers (int): The number of baking layers.
        elapsed_bake_time (int): Time elapsed baking so far.

    Returns:
        int: Prep time + elapsed bake time
    """
    
    return preparation_time_in_minutes(number_of_layers) + elapsed_bake_time
    