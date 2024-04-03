<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![Apache-2.0 License][license-shield]][license-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/Brausepaul10/carrot-OS">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">Cärröt OS</h3>

  <p align="center">
    the operating system nobody needs
    <br />
    <br />
    <br />
    ·
    <a href="https://github.com/Brausepaul10/carrot-OS/issues/new?labels=bug&template=bug-report---.md">Report Bug</a>
    ·
    <a href="https://github.com/Brausepaul10/carrot-OS/issues/new?labels=enhancement&template=feature-request---.md">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project
This is a little project of mine, where i try to create something similar to an operating system. Note that i am still very new to the topic and don't now much assembly so don't expect too much.

 <p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

Complete the steps below and have fun!

### Prerequisites

You will need three programs:
* git, qemu and nasm
  ```sh
  npm install git qemu-system-x86 nasm
  ```

### Installation


1. Clone the repo
   ```sh
   git clone https://github.com/Brausepaul10/carrot-OS.git
   ```
2. go into the folder
   ```sh
   cd carrot-OS
   ```
3. assemble your .asm file
   ```sh
   nasm boot.asm -f bin -o boot.bin
   ```
4. launch!
   ```sh
   qemu-system-x86_64 boot.bin -nographic
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage

Pretty much nothing at the moment, but more stuff will be added in the near future!

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ROADMAP -->
## Roadmap

- [ ] "SHHHH!, it's a secret."

See the [open issues](https://github.com/Brausepaul10/carrot-OS/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the Apache-2.0 License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Jannik Furth - jannikfurth1@gmail.com

Project Link: [https://github.com/Brausepaul10/carrot-OS](https://github.com/Brausepaul10/carrot-OS)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/Brausepaul10/carrot-OS.svg?style=for-the-badge
[contributors-url]: https://github.com/Brausepaul10/carrot-OS/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Brausepaul10/carrot-OS.svg?style=for-the-badge
[forks-url]: https://github.com/Brausepaul10/carrot-OS/network/members
[stars-shield]: https://img.shields.io/github/stars/Brausepaul10/carrot-OS.svg?style=for-the-badge
[stars-url]: https://github.com/Brausepaul10/carrot-OS/stargazers
[issues-shield]: https://img.shields.io/github/issues/Brausepaul10/carrot-OS.svg?style=for-the-badge
[issues-url]: https://github.com/Brausepaul10/carrot-OS/issues
[license-shield]: https://img.shields.io/github/license/Brausepaul10/carrot-OS.svg?style=for-the-badge
[license-url]: https://github.com/Brausepaul10/carrot-OS/LICENSE.txt


