## [1.0.0+hotfix.1] - Bug fix icon nullability with default icon

* Optional icon nullability with default icon.

  This bug fixed added by contributor [Rashid-Khabeer](https://github.com/Rashid-Khabeer).

## [1.0.0] - Null safety and Optional icon

* flutter_dropdown (this package) is completely migrated to null safety by Lucas Lannes.

  This feature added by contributor [Lucas Lannes](https://github.com/lucaslannes).

* You can use `icon` Widget to add optional icon to the dropdown.

  This feature added by contributor [Abubakar Abdusalam](https://github.com/bynalab).

## [0.0.8] - Underline feature to dropdown

* You can use `showUnderline` boolean to decide if the underline isshown or not.

  This feature added by contributor [Pedro Lemos](https://github.com/pedrolemoz).

## [0.0.7+hotfix.1] - Cannot select (disabled)

* Cannot select (disabled) drop down button after cleared fixed.

## [0.0.7] - `isCleared` parameter to clear dropdown selected value

* Sometimes we need to clear drop down selected value and show hint or disable drop down.
  If that required, pass `isCreated: true`. This parameter default to `false`. If this not
  parameter not required, can ignore it.

## [0.0.6+hotfix.2] - `onChange()` `null` issue fixed

* Fixed: `'Null' is not a subtype of type '(dynamic) => void`'`.

## [0.0.6] - Hint became a widget instead of String.

* Hint changed to Widget instead of String (Let me know if need to revert).
* Example app updated

<em>Let me know if this dropdown less complicated with new features. So that, I can
keep refactoring this to make it more less complicated.</em>

## [0.0.5] - Expanded property.

* Property to make dropdown expanded (`isExpanded` `false` by default).

## [0.0.4] - Custom widget support.

* Custom widget support for dropdown menu items.

## [0.0.3] - Any type dropdown button implementation.

* Create dropdown button for any data items.

## [0.0.2] - String only dropdown button implementation.

* Create dropdown button for string items easily.

## [0.0.1] - Simple dropdown button.

* Less complex boilerplate code for dropdown button.