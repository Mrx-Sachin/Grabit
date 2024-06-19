# Grabit
## _Linux Text Capture_

Grabit is a Bash script designed to simplify the process of capturing and extracting text from images on a Linux system. This script utilizes the Tesseract OCR engine, ImageMagick, and other utilities to streamline the workflow of capturing text from various sources within the Linux environment.

https://github.com/Mrx-Sachin/godeye/assets/112502093/9e06466f-9b90-41a5-a253-5c69e70a94f4

## Prerequisites

Before using Grabit, ensure the following dependencies are installed:

- [Tesseract OCR](https://github.com/tesseract-ocr/tesseract): Required for optical character recognition.
- [ImageMagick](https://imagemagick.org/): Used to manipulate and enhance images.
- [scrot](https://github.com/resurrecting-open-source-projects/scrot): A command-line screenshot utility.
- [xclip](https://github.com/astrand/xclip): Required for copying the result to the clipboard.

## Installation

```sh
sudo apt update
sudo apt install tesseract-ocr imagemagick scrot xclip xsel
```
## Clone

```
git clone https://github.com/Mrx-Sachin/Grabit.git
```

## Usage

1. Clone this repository or download the `grabit.sh` script.
2. Make the script executable: `chmod +x grabit.sh`
3. Run the script: `./grabit.sh`

The script will perform the following steps:

1. Check for required dependencies.
2. Allow you to select the language for Tesseract OCR.
3. Capture a screenshot of a selected area.
4. Enhance the image quality for better OCR results.
5. Extract text using Tesseract OCR.
6. Copy the extracted text to the clipboard using xclip.

## Customization

You can customize the script by modifying variables such as `tesseract_lang` to set the default language for OCR.

##Future Plans


## License

This project is licensed under the [MIT License](LICENSE).        





