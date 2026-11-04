# HP iPAQ hx4700 — kryty baterie Thin a Max

[English](README.md) · [Licence: CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/deed.cs)

Náhradní kryty baterie pro **HP iPAQ hx4700**, určené k 3D tisku, ve dvou variantách: **Thin** a **Max**. Součástí projektu je také vývoj nabíjecího řešení.

## Varianty krytů a stažení

| Varianta | Stažení modelu |
| --- | --- |
| **Thin** | [Stáhnout STL ZIP — Thin a Max, v0.1.0](https://github.com/Iron-panda666/hp-ipaq-hx4700-battery-covers/raw/refs/heads/main/releases/hp-ipaq-hx4700-Thin-Max-v0.1.0.zip) |
| **Max** | [Stáhnout STL ZIP — Thin a Max, v0.1.0](https://github.com/Iron-panda666/hp-ipaq-hx4700-battery-covers/raw/refs/heads/main/releases/hp-ipaq-hx4700-Thin-Max-v0.1.0.zip) |

Společný archiv obsahuje obě varianty krytu a dodané STL díly **Holder**, **Lever** a **Lever cover**. Kompatibilní články, postup sestavení a parametry tisku budou doplněny po ověření.

Modely jsou distribuovány v ZIP archivech obsahujících STL soubory, úplné znění licence v souboru `LICENSE`, informace o autorství v `ATTRIBUTION.md` a dokumentaci projektu. Archivy a kontrolní součty jsou ve složce [`releases/`](https://github.com/Iron-panda666/hp-ipaq-hx4700-battery-covers/tree/main/releases). Nabíjecí elektronika není součástí balíčku.

## Náhledy modelu Thin

Dodané snímky z CADu zachycují variantu Thin.

![Kryt Thin — vnitřní pohled](docs/images/Thin01.png)

[Měření šířky](docs/images/Thin02.png) · [Měření detailu](docs/images/Thin03.png)

## Co je nyní potřeba pro baterii

**Prozatím je nutné použít původní originální BMS / elektroniku z originální baterie HP iPAQ hx4700.**

Vytištěný kryt tuto desku nenahrazuje. Náhrada BMS ani kompletní návrh nové elektroniky baterie zatím nejsou součástí projektu.

## Nabíjecí elektronika — ve vývoji

Na nabíjecí elektronice se pracuje. První řešení má být sestaveno z dostupných modulů a součástek od dodavatelů, jako jsou AliExpress, Mouser, TME nebo Amazon. Konečný výběr modulů a jejich zapojení zatím nejsou zveřejněny.

Do budoucna zvažuji také vlastní chytřejší desku, případně s podporou **USB-C Power Delivery (PD)** a **vzájemným blokováním nabíjení přes USB-C a 22pinový konektor iPAQu**:

- Při připojení 22pinového konektoru by se nabíjecí větev USB-C vypnula.
- Při aktivním nabíjení přes USB-C by se blokovalo nabíjení přes 22pinový konektor.
- Vždy by byl aktivní pouze jeden nabíjecí vstup. Priorita vstupů a chování při přepínání ještě nejsou stanoveny.

Jde o zvažované cíle vývoje. USB-C PD ani přepínání vstupů zatím nejsou hotové funkce. Schéma, seznam součástek a ověřené elektrické parametry budou doplněny po dokončení návrhu.

## Licence a autorství

Modely krytů a dokumentace projektu jsou pod licencí **Creative Commons Uveďte původ–Neužívejte komerčně 4.0 Mezinárodní (CC BY-NC 4.0)**. Je možné je sdílet a upravovat pro nekomerční účely za podmínek licence. Při sdílení uveďte autora **Iron-panda666**, zachovejte dodané informace o autorství a licenci, připojte odkaz na licenci a označte provedené změny.

- [Úplné znění licence](LICENSE)
- [České shrnutí licence](https://creativecommons.org/licenses/by-nc/4.0/deed.cs)
- [Informace o autorství](ATTRIBUTION.md)

Pro komerční použití, včetně prodeje vytištěných krytů, kontaktujte [Iron-panda666 na GitHubu](https://github.com/Iron-panda666) a domluvte samostatnou komerční licenci.

Balicí skript ve složce `tools/` má samostatnou [licenci MIT](https://github.com/Iron-panda666/hp-ipaq-hx4700-battery-covers/blob/main/tools/LICENSE). Firmware zatím není součástí projektu. Případný budoucí firmware bude potřebovat výslovně uvedenou softwarovou licenci.

Jde o nezávislý komunitní projekt. HP a iPAQ jsou ochranné známky příslušných vlastníků; projekt není prezentován jako oficiální produkt ani jako jimi podporovaný projekt.
