class Fruitloops < Formula
  include Language::Python::Virtualenv

  desc "Agent-friendly CLI for querying connectome analysis tables"
  homepage "https://github.com/gumadeiras/fruitloops"
  url "https://github.com/gumadeiras/fruitloops/releases/download/v0.1.11/fruitloops-0.1.11.tar.gz"
  sha256 "e761d6c298e703ed99d4d127bab99d53aed65601a06915b804fc82c1a672c166"
  license "MIT"

  depends_on "python@3.13"

  on_macos do
    resource "duckdb" do
      url "https://files.pythonhosted.org/packages/b1/e0/d5418def53ae4e05a63075705ff44ed5af5a1a5932627eb2b600c5df1c93/duckdb-1.5.2-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "98c0535cd6d901f61a5ea3c2e26a1fd28482953d794deb183daf568e3aa5dda6"
    end
    resource "matplotlib" do
      url "https://files.pythonhosted.org/packages/63/d9/9e14bc7564bf92d5ffa801ae5fac819ce74b925dfb55e3ebde61a3bbad3e/matplotlib-3.10.9-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "b1b745c489cd1a77a0dc1120a05dc87af9798faebc913601feb8c73d89bf2d1e"
    end
    resource "contourpy" do
      url "https://files.pythonhosted.org/packages/96/e4/7adcd9c8362745b2210728f209bfbcf7d91ba868a2c5f40d8b58f54c509b/contourpy-1.3.3-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "d002b6f00d73d69333dac9d0b8d5e84d9724ff9ef044fd63c5986e62b7c9e1b1"
    end
    resource "fonttools" do
      url "https://files.pythonhosted.org/packages/3b/56/6f389de21c49555553d6a5aeed5ac9767631497ac836c4f076273d15bd72/fonttools-4.62.1-cp313-cp313-macosx_10_13_universal2.whl"
      sha256 "c22b1014017111c401469e3acc5433e6acf6ebcc6aa9efb538a533c800971c79"
    end
    resource "kiwisolver" do
      url "https://files.pythonhosted.org/packages/a8/3a/d0a972b34e1c63e2409413104216cd1caa02c5a37cb668d1687d466c1c45/kiwisolver-1.5.0-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "dda366d548e89a90d88a86c692377d18d8bd64b39c1fb2b92cb31370e2896bbd"
    end
    resource "numpy" do
      url "https://files.pythonhosted.org/packages/e5/87/499737bfba066b4a3bebff24a8f1c5b2dee410b209bc6668c9be692580f0/numpy-2.4.4-cp313-cp313-macosx_14_0_arm64.whl"
      sha256 "4a19d9dba1a76618dd86b164d608566f393f8ec6ac7c44f0cc879011c45e65af"
    end
    resource "pillow" do
      url "https://files.pythonhosted.org/packages/71/43/905a14a8b17fdb1ccb58d282454490662d2cb89a6bfec26af6d3520da5ec/pillow-12.2.0-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "56b25336f502b6ed02e889f4ece894a72612fe885889a6e8c4c80239ff6e5f5f"
    end
    resource "pyarrow" do
      url "https://files.pythonhosted.org/packages/6f/d3/a1abf004482026ddc17f4503db227787fa3cfe41ec5091ff20e4fea55e57/pyarrow-24.0.0-cp313-cp313-macosx_12_0_arm64.whl"
      sha256 "02b001b3ed4723caa44f6cd1af2d5c86aa2cf9971dacc2ffa55b21237713dfba"
    end
    resource "pandas" do
      url "https://files.pythonhosted.org/packages/31/94/72fac03573102779920099bcac1c3b05975c2cb5f01eac609faf34bed1ca/pandas-2.3.3-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "bdcd9d1167f4885211e401b3036c0c8d9e274eee67ea8d0758a256d60704cfe8"
    end
    resource "psutil" do
      url "https://files.pythonhosted.org/packages/80/c4/f5af4c1ca8c1eeb2e92ccca14ce8effdeec651d5ab6053c589b074eda6e1/psutil-7.2.2-cp36-abi3-macosx_11_0_arm64.whl"
      sha256 "1a7b04c10f32cc88ab39cbf606e117fd74721c831c98a27dc04578deb0c16979"
    end
    resource "rpds-py" do
      url "https://files.pythonhosted.org/packages/fd/32/55fb50ae104061dbc564ef15cc43c013dc4a9f4527a1f4d99baddf56fe5f/rpds_py-0.30.0-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "e7536cd91353c5273434b4e003cbda89034d67e7710eab8761fd918ec6c69cf8"
    end
    resource "charset-normalizer" do
      url "https://files.pythonhosted.org/packages/c1/3b/66777e39d3ae1ddc77ee606be4ec6d8cbd4c801f65e5a1b6f2b11b8346dd/charset_normalizer-3.4.7-cp313-cp313-macosx_10_13_universal2.whl"
      sha256 "f496c9c3cc02230093d8330875c4c3cdfc3b73612a5fd921c65d39cbcef08063"
    end
    resource "scipy" do
      url "https://files.pythonhosted.org/packages/5b/58/3ce96251560107b381cbd6e8413c483bbb1228a6b919fa8652b0d4090e7f/scipy-1.17.1-cp313-cp313-macosx_14_0_arm64.whl"
      sha256 "7ff200bf9d24f2e4d5dc6ee8c3ac64d739d3a89e2326ba68aaf6c4a2b838fd7d"
    end
    resource "ujson" do
      url "https://files.pythonhosted.org/packages/61/73/03c7473372e1a538206fc655e474fa15f8bf9c46bb7c73c5fec9a544e429/ujson-5.12.1-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "5dc91fa06ea35920b704fd9d70871897680145998071cfbf5ee3e19f2c9fc242"
    end
  end

  on_linux do
    resource "duckdb" do
      url "https://files.pythonhosted.org/packages/bd/21/d903cc63a5140c822b7b62b373a87dc557e60c29b321dfb435061c5e67cf/duckdb-1.5.2-cp313-cp313-manylinux_2_26_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "70631c847ca918ee710ec874241b00cf9d2e5be90762cbb2a0389f17823c08f7"
    end
    resource "matplotlib" do
      url "https://files.pythonhosted.org/packages/8a/17/4402d0d14ccf1dfc70932600b68097fbbf9c898a4871d2cbbe79c7801a32/matplotlib-3.10.9-cp313-cp313-manylinux2014_x86_64.manylinux_2_17_x86_64.whl"
      sha256 "8f3bcac1ca5ed000a6f4337d47ba67dfddf37ed6a46c15fd7f014997f7bf865f"
    end
    resource "contourpy" do
      url "https://files.pythonhosted.org/packages/4b/32/e0f13a1c5b0f8572d0ec6ae2f6c677b7991fafd95da523159c19eff0696a/contourpy-1.3.3-cp313-cp313-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "4debd64f124ca62069f313a9cb86656ff087786016d76927ae2cf37846b006c9"
    end
    resource "fonttools" do
      url "https://files.pythonhosted.org/packages/e2/98/8b1e801939839d405f1f122e7d175cebe9aeb4e114f95bfc45e3152af9a7/fonttools-4.62.1-cp313-cp313-manylinux2014_x86_64.manylinux_2_17_x86_64.whl"
      sha256 "6706d1cb1d5e6251a97ad3c1b9347505c5615c112e66047abbef0f8545fa30d1"
    end
    resource "kiwisolver" do
      url "https://files.pythonhosted.org/packages/2b/0a/7b98e1e119878a27ba8618ca1e18b14f992ff1eda40f47bccccf4de44121/kiwisolver-1.5.0-cp313-cp313-manylinux2014_x86_64.manylinux_2_17_x86_64.whl"
      sha256 "332b4f0145c30b5f5ad9374881133e5aa64320428a57c2c2b61e9d891a51c2f3"
    end
    resource "numpy" do
      url "https://files.pythonhosted.org/packages/d1/73/a9d864e42a01896bb5974475438f16086be9ba1f0d19d0bb7a07427c4a8b/numpy-2.4.4-cp313-cp313-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "c901b15172510173f5cb310eae652908340f8dede90fff9e3bf6c0d8dfd92f83"
    end
    resource "pillow" do
      url "https://files.pythonhosted.org/packages/67/ee/21d4e8536afd1a328f01b359b4d3997b291ffd35a237c877b331c1c3b71c/pillow-12.2.0-cp313-cp313-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "eedf4b74eda2b5a4b2b2fb4c006d6295df3bf29e459e198c90ea48e130dc75c3"
    end
    resource "pyarrow" do
      url "https://files.pythonhosted.org/packages/84/9f/8fb7c222b100d314137fa40ec050de56cd8c6d957d1cfff685ce72f15b17/pyarrow-24.0.0-cp313-cp313-manylinux_2_28_x86_64.whl"
      sha256 "6f066b179d68c413374294bc1735f68475457c933258df594443bb9d88ddc2a0"
    end
    resource "pandas" do
      url "https://files.pythonhosted.org/packages/15/07/284f757f63f8a8d69ed4472bfd85122bd086e637bf4ed09de572d575a693/pandas-2.3.3-cp313-cp313-manylinux_2_24_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "318d77e0e42a628c04dc56bcef4b40de67918f7041c2b061af1da41dcff670ac"
    end
    resource "psutil" do
      url "https://files.pythonhosted.org/packages/b5/70/5d8df3b09e25bce090399cf48e452d25c935ab72dad19406c77f4e828045/psutil-7.2.2-cp36-abi3-manylinux2010_x86_64.manylinux_2_12_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "076a2d2f923fd4821644f5ba89f059523da90dc9014e85f8e45a5774ca5bc6f9"
    end
    resource "rpds-py" do
      url "https://files.pythonhosted.org/packages/b7/de/f7192e12b21b9e9a68a6d0f249b4af3fdcdff8418be0767a627564afa1f1/rpds_py-0.30.0-cp313-cp313-manylinux_2_17_x86_64.manylinux2014_x86_64.whl"
      sha256 "9027da1ce107104c50c81383cae773ef5c24d296dd11c99e2629dbd7967a20c6"
    end
    resource "charset-normalizer" do
      url "https://files.pythonhosted.org/packages/fa/07/330e3a0dda4c404d6da83b327270906e9654a24f6c546dc886a0eb0ffb23/charset_normalizer-3.4.7-cp313-cp313-manylinux2014_x86_64.manylinux_2_17_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "e044c39e41b92c845bc815e5ae4230804e8e7bc29e399b0437d64222d92809dd"
    end
    resource "scipy" do
      url "https://files.pythonhosted.org/packages/f5/5f/f17563f28ff03c7b6799c50d01d5d856a1d55f2676f537ca8d28c7f627cd/scipy-1.17.1-cp313-cp313-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "581b2264fc0aa555f3f435a5944da7504ea3a065d7029ad60e7c3d1ae09c5464"
    end
    resource "ujson" do
      url "https://files.pythonhosted.org/packages/6c/15/ec46b1757c8f7770d8c101b8a463bec67c19e89c46c608d01e4b193cc64a/ujson-5.12.1-cp313-cp313-manylinux_2_24_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "8aa731138d6dfca4ab84501b72384e6c544bfb48cb87a0dd4d304df3246cac25"
    end
  end

  preserve_rpath

  resource "cycler" do
    url "https://files.pythonhosted.org/packages/e7/05/c19819d5e3d95294a6f5947fb9b9629efb316b96de511b418c53d245aae6/cycler-0.12.1-py3-none-any.whl"
    sha256 "85cef7cff222d8644161529808465972e51340599459b8ac3ccbac5a854e0d30"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/df/b2/87e62e8c3e2f4b32e5fe99e0b86d576da1312593b39f47d8ceef365e95ed/packaging-26.2-py3-none-any.whl"
    sha256 "5fc45236b9446107ff2415ce77c807cee2862cb6fac22b8a73826d0693b0980e"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/10/bd/c038d7cc38edc1aa5bf91ab8068b63d4308c66c4c8bb3cbba7dfbc049f9c/pyparsing-3.3.2-py3-none-any.whl"
    sha256 "850ba148bd908d7e2411587e247a1e4f0327839c40e2e5e6d05a007ecc69911d"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/ec/57/56b9bcc3c9c6a792fcbaf139543cee77261f3651ca9da0c93f5c1221264b/python_dateutil-2.9.0.post0-py2.py3-none-any.whl"
    sha256 "a8b2bc7bffae282281c8140a97d3aa9c14da0b136dfe83f850eea9a5f7470427"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/b7/ce/149a00dd41f10bc29e5921b496af8b574d8413afcd5e30dfa0ed46c2cc5e/six-1.17.0-py2.py3-none-any.whl"
    sha256 "4721f391ed90541fddacab5acf947aa0d3dc7d27b2e1e8eda2be8970586c3274"
  end

  resource "caveclient" do
    url "https://files.pythonhosted.org/packages/65/a3/ba1b923dbd5a860682266bfacc3d3e57052d2cd9e799d5e8c29446cc9a65/caveclient-8.0.1-py3-none-any.whl"
    sha256 "8282c0eca83b9c7c8a4516026d8e4c9175ba376532fea9a3df0f6407f8dd6bff"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/64/b4/17d4b0b2a2dc85a6df63d1157e028ed19f90d4cd97c36717afef2bc2f395/attrs-26.1.0-py3-none-any.whl"
    sha256 "c647aa4a12dfbad9333ca4e71fe62ddc36f4e63b2d260a37a8b83d2f043ac309"
  end

  resource "cachetools" do
    url "https://files.pythonhosted.org/packages/bf/0f/f897abe4ea0a8c408ae65c8c83bffab4936ad65d6032d4fb4cd35bbdc3ee/cachetools-7.1.1-py3-none-any.whl"
    sha256 "0335cd7a0952d2b22327441fb0628139e234c565559eeb91a8a4ac7551c5353d"
  end

  resource "ipython" do
    url "https://files.pythonhosted.org/packages/b9/86/3060e8029b7cc505cce9a0137431dda81d0a3fde93a8f0f50ee0bf37a795/ipython-9.13.0-py3-none-any.whl"
    sha256 "57f9d4639e20818d328d287c7b549af3d05f12486ea8f2e7f73e52a36ec4d201"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/84/03/0d3ce49e2505ae70cf43bc5bb3033955d2fc9f932163e84dc0779cc47f48/prompt_toolkit-3.0.52-py3-none-any.whl"
    sha256 "9aac639a3bbd33284347de5ad8d68ecc044b91a762dc39b7c21095fcd6a19955"
  end

  resource "decorator" do
    url "https://files.pythonhosted.org/packages/4e/8c/f3147f5c4b73e7550fe5f9352eaa956ae838d5c51eb58e7a25b9f3e2643b/decorator-5.2.1-py3-none-any.whl"
    sha256 "d316bb415a2d9e2d2b3abcc4084c6502fc09240e292cd76a76afc106a1c8e04a"
  end

  resource "ipython-pygments-lexers" do
    url "https://files.pythonhosted.org/packages/d9/33/1f075bf72b0b747cb3288d011319aaf64083cf2efef8354174e3ed4540e2/ipython_pygments_lexers-1.1.1-py3-none-any.whl"
    sha256 "a9462224a505ade19a605f71f8fa63c2048833ce50abc86768a0d81d876dc81c"
  end

  resource "jedi" do
    url "https://files.pythonhosted.org/packages/9a/93/242e2eab5fe682ffcb8b0084bde703a41d51e17ee0f3a31ff0d9d813620a/jedi-0.20.0-py2.py3-none-any.whl"
    sha256 "7bdd9c2634f56713299976f4cbd59cb3fa92165cc5e05ea811fb253480728b67"
  end

  resource "parso" do
    url "https://files.pythonhosted.org/packages/99/5d/8268b644392ee874ee82a635cd0df1773de230bde356c38de28e298392cc/parso-0.8.7-py2.py3-none-any.whl"
    sha256 "a8926eb2a1b915486941fdbd31e86a4baf88fe8c210f25f2f35ecec5b574ca1c"
  end

  resource "matplotlib-inline" do
    url "https://files.pythonhosted.org/packages/41/09/5b161152e2d90f7b87f781c2e1267494aef9c32498df793f73ad0a0a494a/matplotlib_inline-0.2.2-py3-none-any.whl"
    sha256 "3c821cf1c209f59fb2d2d64abbf5b23b67bcb2210d663f9918dd851c6da1fcf6"
  end

  resource "pexpect" do
    url "https://files.pythonhosted.org/packages/9e/c3/059298687310d527a58bb01f3b1965787ee3b40dce76752eda8b44e9a2c5/pexpect-4.9.0-py2.py3-none-any.whl"
    sha256 "7236d1e080e4936be2dc3e326cec0af72acf9212a7e1d060210e70a47e253523"
  end

  resource "ptyprocess" do
    url "https://files.pythonhosted.org/packages/22/a6/858897256d0deac81a172289110f31629fc4cee19b6f01283303e18c8db3/ptyprocess-0.7.0-py2.py3-none-any.whl"
    sha256 "4b41f3967fce3af57cc7e94b888626c18bf37a083e3651ca8feeb66d492fef35"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/f4/7e/a72dd26f3b0f4f2bf1dd8923c85f7ceb43172af56d63c7383eb62b332364/pygments-2.20.0-py3-none-any.whl"
    sha256 "81a9e26dd42fd28a23a2d169d86d7ac03b46e2f8b59ed4698fb4785f946d0176"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/ec/dd/96da98f892250475bdf2328112d7468abdd4acc7b902b6af23f4ed958ea0/pytz-2026.2-py2.py3-none-any.whl"
    sha256 "04156e608bee23d3792fd45c94ae47fae1036688e75032eea2e3bf0323d1f126"
  end

  resource "stack-data" do
    url "https://files.pythonhosted.org/packages/f1/7b/ce1eafaf1a76852e2ec9b22edecf1daa58175c090266e9f6c64afcd81d91/stack_data-0.6.3-py3-none-any.whl"
    sha256 "d5558e0c25a4cb0853cddad3d77da9891a08cb85dd9f9f91b9f8cd66e511e695"
  end

  resource "asttokens" do
    url "https://files.pythonhosted.org/packages/d2/39/e7eaf1799466a4aef85b6a4fe7bd175ad2b1c6345066aa33f1f58d4b18d0/asttokens-3.0.1-py3-none-any.whl"
    sha256 "15a3ebc0f43c2d0a50eeafea25e19046c68398e487b9f1f5b517f7c0f40f976a"
  end

  resource "executing" do
    url "https://files.pythonhosted.org/packages/c1/ea/53f2148663b321f21b5a606bd5f191517cf40b7072c0497d3c92c4a13b1e/executing-2.2.1-py2.py3-none-any.whl"
    sha256 "760643d3452b4d777d295bb167ccc74c64a81df23fb5e08eff250c425a4b2017"
  end

  resource "traitlets" do
    url "https://files.pythonhosted.org/packages/da/98/a9937a969d018a23badfea0b381f66783649d48e0ea6c41923265c3cbeb3/traitlets-5.15.0-py3-none-any.whl"
    sha256 "fb36a18867a6803deab09f3c5e0fa81bb7b26a5c9e82501c9933f759166eff40"
  end

  resource "tzdata" do
    url "https://files.pythonhosted.org/packages/ce/e4/dccd7f47c4b64213ac01ef921a1337ee6e30e8c6466046018326977efd95/tzdata-2026.2-py2.py3-none-any.whl"
    sha256 "bbe9af844f658da81a5f95019480da3a89415801f6cc966806612cc7169bffe7"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/69/90/f63fb5873511e014207a475e2bb4e8b2e570d655b00ac19a9a0ca0a385ee/jsonschema-4.26.0-py3-none-any.whl"
    sha256 "d489f15263b8d200f8387e64b4c3a75f06629559fb73deb8fdfb525f2dab50ce"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/41/45/1a4ed80516f02155c51f51e8cedb3c1902296743db0bbc66608a0db2814f/jsonschema_specifications-2025.9.1-py3-none-any.whl"
    sha256 "98802fee3a11ee76ecaca44429fda8a41bff98b00a0f2838151b113f210cc6fe"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/2c/58/ca301544e1fa93ed4f80d724bf5b194f6e4b945841c5bfd555878eea9fcb/referencing-0.37.0-py3-none-any.whl"
    sha256 "381329a9f99628c9069361716891d34ad94af76e461dcb0335825aecc7692231"
  end

  resource "networkx" do
    url "https://files.pythonhosted.org/packages/9e/c9/b2622292ea83fbb4ec318f5b9ab867d0a28ab43c5717bb85b0a5f6b3b0a4/networkx-3.6.1-py3-none-any.whl"
    sha256 "d47fbf302e7d9cbbb9e2555a0d267983d2aa476bac30e90dfbe5669bd57f3762"
  end

  resource "neuprint-python" do
    url "https://files.pythonhosted.org/packages/e1/56/f85402eed02c51672eda781a0a97b58a4983aa76eb4f2b270e82116f0c04/neuprint_python-0.6.1-py2.py3-none-any.whl"
    sha256 "a2d5a375c698a60ddb00e449cc7abc78e4cf75be61e75e69f79321c57f958a8c"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/15/5a/4a949d170476de3c04ac036b5466422fbcbf348a917d8042eedf2cac7d1b/requests-2.34.1-py3-none-any.whl"
    sha256 "bf38a3ff993960d3dd819c08862c40b3c703306eb7c744fcd9f4ddbb95b548f0"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/d2/23/408243171aa9aaba178d3e2559159c24c1171a641aa83b67bdd3394ead8e/idna-3.15-py3-none-any.whl"
    sha256 "048adeaf8c2d788c40fee287673ccaa74c24ffd8dcf09ffa555a2fbb59f10ac8"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/7f/3e/5db95bcf282c52709639744ca2a8b149baccf648e39c8cc87553df9eae0c/urllib3-2.7.0-py3-none-any.whl"
    sha256 "9fb4c81ebbb1ce9531cce37674bbc6f1360472bc18ca9a553ede278ef7276897"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/22/30/7cd8fdcdfbc5b869528b079bfb76dcdf6056b1a2097a662e5e8c04f42965/certifi-2026.4.22-py3-none-any.whl"
    sha256 "3cb2210c8f88ba2318d29b0388d1023c8492ff72ecdde4ebdaddbb13a31b1c4a"
  end

  resource "asciitree" do
    url "https://files.pythonhosted.org/packages/2d/6a/885bc91484e1aa8f618f6f0228d76d0e67000b0fdd6090673b777e311913/asciitree-0.3.3.tar.gz"
    sha256 "4aa4b9b649f85e3fcb343363d97564aa1fb62e249677f2e18a96765145cc0f6e"
  end

  resource "pure-eval" do
    url "https://files.pythonhosted.org/packages/8e/37/efad0257dc6e593a18957422533ff0f87ede7c9c6ea010a2177d738fb82f/pure_eval-0.2.3-py3-none-any.whl"
    sha256 "1db8e35b67b3d218d818ae653e27f06c3aa420901fa7b081ca98cbedc874e0d0"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/16/e1/3079a9ff9b8e11b846c6ac5c8b5bfb7ff225eee721825310c91b3b50304f/tqdm-4.67.3-py3-none-any.whl"
    sha256 "ee1e4c0e59148062281c49d80b25b67771a127c85fc9676d3be5f243206826bf"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/41/52/e465037f5375f43533d1a80b6923955201596a99142ed524d77b571a1418/wcwidth-0.7.0-py3-none-any.whl"
    sha256 "5d69154c429a82910e241c738cd0e2976fac8a2dd47a1a805f4afed1c0f136f2"
  end

  def install
    if (OS.mac? && !Hardware::CPU.arm?) || (OS.linux? && !Hardware::CPU.intel?)
      odie "fruitloops Homebrew install supports Apple Silicon macOS and x86_64 Linux"
    end

    venv = virtualenv_create(libexec, "python3.13")
    resources.each(&:fetch)
    wheelhouse = buildpath/"wheelhouse"
    wheelhouse.mkpath
    resource_paths = resources.map do |resource|
      target = wheelhouse/resource.downloader.basename
      ln_s resource.cached_download, target
      target
    end
    system "python3.13", "-m", "pip", "--python=#{libexec}/bin/python", "install",
           "--no-deps", "--ignore-installed", "--no-compile", *resource_paths
    venv.pip_install_and_link buildpath
    (libexec/"share/fruitloops/data").install Dir["data/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fruitloops --version")
    assert_match "flywire", shell_output("#{bin}/fruitloops datasets")
    system libexec/"bin/python", "-c", "import duckdb, pyarrow, caveclient, neuprint, matplotlib, pandas"
  end
end
