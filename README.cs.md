# HP iPAQ hx4700 — kryty baterie Thin a Max

[English](README.md) · [Licence: CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/deed.cs)

Náhradní kryty baterie pro **HP iPAQ hx4700**, určené k 3D tisku, ve dvou variantách: **Thin** a **Max**. Součástí projektu je také vývoj nabíjecího řešení.

## Stav vývoje — nejde o finální verzi

**Jde o rozpracovaný prototyp, nikoli o dokončený návrh.** Má ještě několik much:

- Ostrý roh ještě potřebuje doladit.
- Prostor pro elektroniku se pravděpodobně změní podle bodů pro připevnění PCB a umístění konektoru.
- Geometrie krytu i uspořádání elektroniky se mohou v dalších revizích změnit.

## Varianty krytů a stažení

| Varianta | Stažení modelu |
| --- | --- |
| **Thin** | [Stáhnout STL ZIP — Thin a Max, v0.1.2](https://github.com/Iron-panda666/hp-ipaq-hx4700-battery-covers/raw/refs/heads/main/releases/hp-ipaq-hx4700-Thin-Max-v0.1.2.zip) |
| **Max** | [Stáhnout STL ZIP — Thin a Max, v0.1.2](https://github.com/Iron-panda666/hp-ipaq-hx4700-battery-covers/raw/refs/heads/main/releases/hp-ipaq-hx4700-Thin-Max-v0.1.2.zip) |

Společný archiv obsahuje obě varianty krytu a dodané STL díly **Holder**, **Lever** a **Lever cover**. Kompatibilní články, úplný postup sestavení a podrobný tiskový profil budou doplněny po ověření.

Modely jsou distribuovány v ZIP archivech obsahujících STL soubory, úplné znění licence v souboru `LICENSE`, informace o autorství v `ATTRIBUTION.md` a dokumentaci projektu. Archivy a kontrolní součty jsou ve složce [`releases/`](https://github.com/Iron-panda666/hp-ipaq-hx4700-battery-covers/tree/main/releases). Nabíjecí elektronika není součástí balíčku.

## Náhledy modelu Thin

Dodané snímky z CADu zachycují variantu Thin.

![Kryt Thin — vnitřní pohled](docs/images/Thin01.png)

[Měření šířky](docs/images/Thin02.png) · [Měření detailu](docs/images/Thin03.png)

## Tisk

Projekt jsem tiskl metodou **FDM na tiskárně Bambu Lab X1C s tryskou o průměru 0,2 mm**. Pro jemnější povrch a detaily, zejména u drobných dílků, může být vhodnější **SLA resinová tiskárna**.

## Potřebná tažná pružina

K vytištěným dílům je potřeba malá **tažná pružina (extension spring)**.

| Parametr | Požadavek |
| --- | --- |
| Vnější průměr | **Nejvýše 1,8 mm; ideálně 1,5 mm** |
| Celková délka | **4–5 mm** |
| Zakončení | **Uzavřená očka na obou koncích; nikoli otevřené háčky** |
| Poloha oček | **Obě očka vystředěná v ose pružiny**, nikoli vyosená do strany |
| Průměr drátu | Přibližně **0,2 mm** |

## Co je nyní potřeba pro baterii

**Prozatím je nutné použít původní originální BMS / elektroniku z originální baterie HP iPAQ hx4700.**

Vytištěný kryt tuto desku nenahrazuje. Náhrada BMS ani kompletní návrh nové elektroniky baterie zatím nejsou součástí projektu.

## Nabíjecí elektronika — ve vývoji

Na nabíjecí elektronice se pracuje. U varianty **Max** bude prostor v návrhu označený žlutě pravděpodobně sloužit pro **nabíjecí PCB, modul USB-C PD a konektor**. Toto umístění je zatím předběžné.

Návrh vlastní PCB už mám víceméně vyřešený, s trochou pomoci od **Claude a Codexu**. Orientační ceny výroby a osazení pouhých **pěti desek** ale vycházejí na **185–555 USD (přibližně 165–495 EUR)** podle zvolené služby osazení. Za pouhých pět desek je to dost vysoká cena.

Prozatím proto použiji **hotové moduly a součástky z AliExpressu, Amazonu, Mouseru, DigiKey nebo TME**. Konečný výběr modulů a jejich zapojení zatím nejsou zveřejněny.

U vlastní desky zvažuji podporu **USB-C Power Delivery (PD)** a **vzájemné blokování nabíjení přes USB-C a 22pinový konektor iPAQu**:

- Při připojení 22pinového konektoru by se nabíjecí větev USB-C vypnula.
- Při aktivním nabíjení přes USB-C by se blokovalo nabíjení přes 22pinový konektor.
- Vždy by byl aktivní pouze jeden nabíjecí vstup. Priorita vstupů a chování při přepínání ještě nejsou stanoveny.

Jde o zvažované cíle vývoje. USB-C PD ani přepínání vstupů zatím nejsou hotové funkce. Schéma, seznam součástek a ověřené elektrické parametry budou doplněny po dokončení návrhu.

## Licence a autorství

Modely krytů a dokumentace projektu jsou pod licencí **Creative Commons Uveďte původ–Neužívejte komerčně 4.0 Mezinárodní (CC BY-NC 4.0)**. Je možné je sdílet a upravovat pro nekomerční účely za podmínek licence. Při sdílení uveďte autora **Iron-panda666**, zachovejte dodané informace o autorství a licenci, připojte odkaz na licenci a označte provedené změny.

Licence se vztahuje pouze na autorská a obdobná práva, která je autor projektu oprávněn licencovat. Neuděluje práva k cizím ochranným známkám, logům ani patentům. Viz [článek 2(b) licence](https://creativecommons.org/licenses/by-nc/4.0/legalcode.en#s2b).

- [Úplné znění licence](LICENSE)
- [České shrnutí licence](https://creativecommons.org/licenses/by-nc/4.0/deed.cs)
- [Informace o autorství](ATTRIBUTION.md)

Pro komerční použití, včetně prodeje vytištěných krytů, kontaktujte [Iron-panda666 na GitHubu](https://github.com/Iron-panda666) a domluvte samostatnou komerční licenci.

Balicí skript ve složce `tools/` má samostatnou [licenci MIT](https://github.com/Iron-panda666/hp-ipaq-hx4700-battery-covers/blob/main/tools/LICENSE). Firmware zatím není součástí projektu. Případný budoucí firmware bude potřebovat výslovně uvedenou softwarovou licenci.

## Kompatibilita a ochranné známky

Jde o nezávislý komunitní projekt. **HP** a **iPAQ** jsou ochranné známky příslušných vlastníků. Tyto názvy označují zařízení, pro které jsou kryty určeny; kryty nejsou oficiálními produkty HP a projekt nenaznačuje propojení s HP, jeho sponzorství ani podporu. Ochranné známky a loga HP/iPAQ nejsou zahrnuty do licence CC BY-NC 4.0 tohoto projektu.

Zveřejněné [podmínky HP pro ochranné známky](https://www.hp.com/us-en/terms-of-use.html) rozlišují věcné a přesné textové zmínky od použití log a zavádějících tvrzení o propojení s HP.
