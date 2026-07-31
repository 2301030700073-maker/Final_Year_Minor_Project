package org.wikipedia.databinding;

import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.materialswitch.MaterialSwitch;
import org.wikipedia.views.DiscreteSeekBar;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DialogThemeChooserBinding {
    public final TextView buttonDecreaseTextSize;
    public final MaterialButton buttonFontFamilySansSerif;
    public final MaterialButton buttonFontFamilySerif;
    public final TextView buttonIncreaseTextSize;
    public final MaterialButton buttonThemeBlack;
    public final MaterialButton buttonThemeDark;
    public final MaterialButton buttonThemeLight;
    public final MaterialButton buttonThemeSepia;
    public final ProgressBar fontChangeProgressBar;
    public final LinearLayout fontFamilyContainer;
    public final MaterialSwitch monospaceFontSwitch;
    public final LinearLayout readingFocusModeContainer;
    public final FrameLayout rootView;
    public final MaterialSwitch showLineNumbersSwitch;
    public final MaterialSwitch syntaxHighlightSwitch;
    public final TextView textSettingsCategory;
    public final TextView textSizePercent;
    public final DiscreteSeekBar textSizeSeekBar;
    public final MaterialSwitch themeChooserDarkModeDimImagesSwitch;
    public final MaterialSwitch themeChooserMatchSystemThemeSwitch;
    public final TextView themeChooserReadingFocusModeDescription;
    public final MaterialSwitch themeChooserReadingFocusModeSwitch;
    public final MaterialSwitch typingSuggestionsSwitch;

    public DialogThemeChooserBinding(FrameLayout frameLayout, TextView textView, MaterialButton materialButton, MaterialButton materialButton2, TextView textView2, MaterialButton materialButton3, MaterialButton materialButton4, MaterialButton materialButton5, MaterialButton materialButton6, ProgressBar progressBar, LinearLayout linearLayout, MaterialSwitch materialSwitch, LinearLayout linearLayout2, MaterialSwitch materialSwitch2, MaterialSwitch materialSwitch3, TextView textView3, TextView textView4, DiscreteSeekBar discreteSeekBar, MaterialSwitch materialSwitch4, MaterialSwitch materialSwitch5, TextView textView5, MaterialSwitch materialSwitch6, MaterialSwitch materialSwitch7) {
        this.rootView = frameLayout;
        this.buttonDecreaseTextSize = textView;
        this.buttonFontFamilySansSerif = materialButton;
        this.buttonFontFamilySerif = materialButton2;
        this.buttonIncreaseTextSize = textView2;
        this.buttonThemeBlack = materialButton3;
        this.buttonThemeDark = materialButton4;
        this.buttonThemeLight = materialButton5;
        this.buttonThemeSepia = materialButton6;
        this.fontChangeProgressBar = progressBar;
        this.fontFamilyContainer = linearLayout;
        this.monospaceFontSwitch = materialSwitch;
        this.readingFocusModeContainer = linearLayout2;
        this.showLineNumbersSwitch = materialSwitch2;
        this.syntaxHighlightSwitch = materialSwitch3;
        this.textSettingsCategory = textView3;
        this.textSizePercent = textView4;
        this.textSizeSeekBar = discreteSeekBar;
        this.themeChooserDarkModeDimImagesSwitch = materialSwitch4;
        this.themeChooserMatchSystemThemeSwitch = materialSwitch5;
        this.themeChooserReadingFocusModeDescription = textView5;
        this.themeChooserReadingFocusModeSwitch = materialSwitch6;
        this.typingSuggestionsSwitch = materialSwitch7;
    }
}
