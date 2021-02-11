FACTORS = {3: "Pling", 5: "Plang", 7: "Plong"}


def convert(number):
    sounds = [sound for factor, sound in FACTORS.items() if number % factor == 0]
    return "".join(sounds) if sounds else str(number)
