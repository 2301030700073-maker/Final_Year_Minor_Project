package org.wikipedia.theme;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.compose.animation.core.Animation;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelKt;
import androidx.preference.Preference;
import androidx.preference.SeekBarPreference;
import androidx.room.Room;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.materialswitch.MaterialSwitch;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.RegexKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Cache;
import okhttp3.ConnectionPool;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.databinding.DialogThemeChooserBinding;
import org.wikipedia.page.ExtendedBottomSheetDialogFragment;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.theme.ThemeChooserDialog;
import org.wikipedia.views.DiscreteSeekBar;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001:\u0006\u0004\u0005\u0006\u0007\u0006\bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\t"}, d2 = {"Lorg/wikipedia/theme/ThemeChooserDialog;", "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;", "<init>", "()V", "Callback", "FontSizeAction", "ThemeButtonListener", "1", "org/wikipedia/login/LoginClient", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ThemeChooserDialog extends ExtendedBottomSheetDialogFragment {
    public static final int BUTTON_STROKE_WIDTH = Okio__OkioKt.roundedDpToPx(2.0f);
    public DialogThemeChooserBinding _binding;
    public final WikipediaApp app;
    public ConnectionPool appearanceSettingInteractionEvent;
    public boolean isEditing;
    public boolean updatingFont;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        void onCancelThemeChooser();

        void onEditingPrefsChanged();

        void onToggleDimImages();

        void onToggleReadingFocusMode();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FontSizeAction {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ FontSizeAction[] $VALUES;
        public static final FontSizeAction DECREASE;
        public static final FontSizeAction INCREASE;
        public static final FontSizeAction RESET;

        static {
            FontSizeAction fontSizeAction = new FontSizeAction("INCREASE", 0);
            INCREASE = fontSizeAction;
            FontSizeAction fontSizeAction2 = new FontSizeAction("DECREASE", 1);
            DECREASE = fontSizeAction2;
            FontSizeAction fontSizeAction3 = new FontSizeAction("RESET", 2);
            RESET = fontSizeAction3;
            FontSizeAction[] fontSizeActionArr = {fontSizeAction, fontSizeAction2, fontSizeAction3};
            $VALUES = fontSizeActionArr;
            $ENTRIES = new EnumEntriesList(fontSizeActionArr);
        }

        public static FontSizeAction valueOf(String str) {
            return (FontSizeAction) Enum.valueOf(FontSizeAction.class, str);
        }

        public static FontSizeAction[] values() {
            return (FontSizeAction[]) $VALUES.clone();
        }
    }

    public ThemeChooserDialog() {
        super(false);
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        this.app = Jsoup.getInstance();
    }

    public static boolean isMatchingSystemThemeEnabled() {
        Prefs prefs = Prefs.INSTANCE;
        return Prefs.getShouldMatchSystemTheme() && Build.VERSION.SDK_INT >= 29;
    }

    public static void updateThemeButtonStroke(MaterialButton materialButton, boolean z) {
        materialButton.setStrokeWidth(z ? BUTTON_STROKE_WIDTH : 0);
        materialButton.setClickable(!z);
    }

    public final Callback callback() {
        ComponentCallbacks activity;
        if (Callback.class.isInstance(getTargetFragment(true))) {
            activity = getTargetFragment(true);
        } else {
            Fragment fragment = this.mParentFragment;
            if (fragment != null) {
                if (Callback.class.isInstance(fragment)) {
                    activity = this.mParentFragment;
                } else if (Callback.class.isInstance(requireParentFragment().mParentFragment)) {
                    activity = requireParentFragment().mParentFragment;
                }
            }
            activity = Callback.class.isInstance(getActivity()) ? getActivity() : null;
        }
        return (Callback) activity;
    }

    public final void conditionallyDisableThemeButtons() {
        DialogThemeChooserBinding dialogThemeChooserBinding = this._binding;
        dialogThemeChooserBinding.getClass();
        MaterialButton materialButton = dialogThemeChooserBinding.buttonThemeLight;
        boolean isMatchingSystemThemeEnabled = isMatchingSystemThemeEnabled();
        float f = 1.0f;
        WikipediaApp wikipediaApp = this.app;
        materialButton.setAlpha((isMatchingSystemThemeEnabled && wikipediaApp.currentTheme.isDark()) ? 0.2f : 1.0f);
        DialogThemeChooserBinding dialogThemeChooserBinding2 = this._binding;
        dialogThemeChooserBinding2.getClass();
        dialogThemeChooserBinding2.buttonThemeSepia.setAlpha((isMatchingSystemThemeEnabled() && wikipediaApp.currentTheme.isDark()) ? 0.2f : 1.0f);
        DialogThemeChooserBinding dialogThemeChooserBinding3 = this._binding;
        dialogThemeChooserBinding3.getClass();
        dialogThemeChooserBinding3.buttonThemeDark.setAlpha((!isMatchingSystemThemeEnabled() || wikipediaApp.currentTheme.isDark()) ? 1.0f : 0.2f);
        DialogThemeChooserBinding dialogThemeChooserBinding4 = this._binding;
        dialogThemeChooserBinding4.getClass();
        MaterialButton materialButton2 = dialogThemeChooserBinding4.buttonThemeBlack;
        if (isMatchingSystemThemeEnabled() && !wikipediaApp.currentTheme.isDark()) {
            f = 0.2f;
        }
        materialButton2.setAlpha(f);
        DialogThemeChooserBinding dialogThemeChooserBinding5 = this._binding;
        dialogThemeChooserBinding5.getClass();
        dialogThemeChooserBinding5.buttonThemeLight.setEnabled((isMatchingSystemThemeEnabled() && wikipediaApp.currentTheme.isDark()) ? false : true);
        DialogThemeChooserBinding dialogThemeChooserBinding6 = this._binding;
        dialogThemeChooserBinding6.getClass();
        dialogThemeChooserBinding6.buttonThemeSepia.setEnabled((isMatchingSystemThemeEnabled() && wikipediaApp.currentTheme.isDark()) ? false : true);
        DialogThemeChooserBinding dialogThemeChooserBinding7 = this._binding;
        dialogThemeChooserBinding7.getClass();
        dialogThemeChooserBinding7.buttonThemeDark.setEnabled(!isMatchingSystemThemeEnabled() || wikipediaApp.currentTheme.isDark());
        DialogThemeChooserBinding dialogThemeChooserBinding8 = this._binding;
        dialogThemeChooserBinding8.getClass();
        dialogThemeChooserBinding8.buttonThemeBlack.setEnabled(!isMatchingSystemThemeEnabled() || wikipediaApp.currentTheme.isDark());
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        dialogInterface.getClass();
        Callback callback = callback();
        if (callback != null) {
            callback.onCancelThemeChooser();
        }
    }

    @Override // org.wikipedia.page.ExtendedBottomSheetDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Serializable serializable = requireArguments().getSerializable("invokeSource");
        serializable.getClass();
        this.appearanceSettingInteractionEvent = new ConnectionPool(21, (Constants.InvokeSource) serializable);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        final int i = 0;
        View inflate = layoutInflater.inflate(R.layout.dialog_theme_chooser, viewGroup, false);
        int i2 = R.id.buttonDecreaseTextSize;
        TextView textView = (TextView) Room.findChildViewById(inflate, R.id.buttonDecreaseTextSize);
        Continuation continuation = null;
        if (textView != null) {
            i2 = R.id.button_font_family_sans_serif;
            MaterialButton materialButton = (MaterialButton) Room.findChildViewById(inflate, R.id.button_font_family_sans_serif);
            if (materialButton != null) {
                i2 = R.id.button_font_family_serif;
                MaterialButton materialButton2 = (MaterialButton) Room.findChildViewById(inflate, R.id.button_font_family_serif);
                if (materialButton2 != null) {
                    i2 = R.id.buttonIncreaseTextSize;
                    TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.buttonIncreaseTextSize);
                    if (textView2 != null) {
                        i2 = R.id.button_theme_black;
                        MaterialButton materialButton3 = (MaterialButton) Room.findChildViewById(inflate, R.id.button_theme_black);
                        if (materialButton3 != null) {
                            i2 = R.id.button_theme_dark;
                            MaterialButton materialButton4 = (MaterialButton) Room.findChildViewById(inflate, R.id.button_theme_dark);
                            if (materialButton4 != null) {
                                i2 = R.id.button_theme_light;
                                MaterialButton materialButton5 = (MaterialButton) Room.findChildViewById(inflate, R.id.button_theme_light);
                                if (materialButton5 != null) {
                                    i2 = R.id.button_theme_sepia;
                                    MaterialButton materialButton6 = (MaterialButton) Room.findChildViewById(inflate, R.id.button_theme_sepia);
                                    if (materialButton6 != null) {
                                        i2 = R.id.font_change_progress_bar;
                                        ProgressBar progressBar = (ProgressBar) Room.findChildViewById(inflate, R.id.font_change_progress_bar);
                                        if (progressBar != null) {
                                            i2 = R.id.fontFamilyContainer;
                                            LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.fontFamilyContainer);
                                            if (linearLayout != null) {
                                                i2 = R.id.monospace_font_switch;
                                                MaterialSwitch materialSwitch = (MaterialSwitch) Room.findChildViewById(inflate, R.id.monospace_font_switch);
                                                if (materialSwitch != null) {
                                                    i2 = R.id.readingFocusModeContainer;
                                                    LinearLayout linearLayout2 = (LinearLayout) Room.findChildViewById(inflate, R.id.readingFocusModeContainer);
                                                    if (linearLayout2 != null) {
                                                        i2 = R.id.show_line_numbers_switch;
                                                        MaterialSwitch materialSwitch2 = (MaterialSwitch) Room.findChildViewById(inflate, R.id.show_line_numbers_switch);
                                                        if (materialSwitch2 != null) {
                                                            i2 = R.id.syntax_highlight_switch;
                                                            MaterialSwitch materialSwitch3 = (MaterialSwitch) Room.findChildViewById(inflate, R.id.syntax_highlight_switch);
                                                            if (materialSwitch3 != null) {
                                                                i2 = R.id.textSettingsCategory;
                                                                TextView textView3 = (TextView) Room.findChildViewById(inflate, R.id.textSettingsCategory);
                                                                if (textView3 != null) {
                                                                    i2 = R.id.text_size_percent;
                                                                    TextView textView4 = (TextView) Room.findChildViewById(inflate, R.id.text_size_percent);
                                                                    if (textView4 != null) {
                                                                        i2 = R.id.text_size_seek_bar;
                                                                        DiscreteSeekBar discreteSeekBar = (DiscreteSeekBar) Room.findChildViewById(inflate, R.id.text_size_seek_bar);
                                                                        if (discreteSeekBar != null) {
                                                                            i2 = R.id.theme_chooser_dark_mode_dim_images_switch;
                                                                            MaterialSwitch materialSwitch4 = (MaterialSwitch) Room.findChildViewById(inflate, R.id.theme_chooser_dark_mode_dim_images_switch);
                                                                            if (materialSwitch4 != null) {
                                                                                i2 = R.id.theme_chooser_match_system_theme_switch;
                                                                                MaterialSwitch materialSwitch5 = (MaterialSwitch) Room.findChildViewById(inflate, R.id.theme_chooser_match_system_theme_switch);
                                                                                if (materialSwitch5 != null) {
                                                                                    i2 = R.id.theme_chooser_reading_focus_mode_description;
                                                                                    TextView textView5 = (TextView) Room.findChildViewById(inflate, R.id.theme_chooser_reading_focus_mode_description);
                                                                                    if (textView5 != null) {
                                                                                        i2 = R.id.theme_chooser_reading_focus_mode_switch;
                                                                                        MaterialSwitch materialSwitch6 = (MaterialSwitch) Room.findChildViewById(inflate, R.id.theme_chooser_reading_focus_mode_switch);
                                                                                        if (materialSwitch6 != null) {
                                                                                            i2 = R.id.typing_suggestions_switch;
                                                                                            MaterialSwitch materialSwitch7 = (MaterialSwitch) Room.findChildViewById(inflate, R.id.typing_suggestions_switch);
                                                                                            if (materialSwitch7 != null) {
                                                                                                this._binding = new DialogThemeChooserBinding((FrameLayout) inflate, textView, materialButton, materialButton2, textView2, materialButton3, materialButton4, materialButton5, materialButton6, progressBar, linearLayout, materialSwitch, linearLayout2, materialSwitch2, materialSwitch3, textView3, textView4, discreteSeekBar, materialSwitch4, materialSwitch5, textView5, materialSwitch6, materialSwitch7);
                                                                                                this.isEditing = requireArguments().getBoolean("isEditing");
                                                                                                updateComponents();
                                                                                                DialogThemeChooserBinding dialogThemeChooserBinding = this._binding;
                                                                                                dialogThemeChooserBinding.getClass();
                                                                                                dialogThemeChooserBinding.textSettingsCategory.setText(getString(this.isEditing ? R.string.theme_category_editing : R.string.theme_category_reading));
                                                                                                DialogThemeChooserBinding dialogThemeChooserBinding2 = this._binding;
                                                                                                dialogThemeChooserBinding2.getClass();
                                                                                                dialogThemeChooserBinding2.buttonDecreaseTextSize.setOnClickListener(new ThemeButtonListener(this, FontSizeAction.DECREASE));
                                                                                                DialogThemeChooserBinding dialogThemeChooserBinding3 = this._binding;
                                                                                                dialogThemeChooserBinding3.getClass();
                                                                                                dialogThemeChooserBinding3.buttonIncreaseTextSize.setOnClickListener(new ThemeButtonListener(this, FontSizeAction.INCREASE));
                                                                                                DialogThemeChooserBinding dialogThemeChooserBinding4 = this._binding;
                                                                                                dialogThemeChooserBinding4.getClass();
                                                                                                TextView textView6 = dialogThemeChooserBinding4.buttonDecreaseTextSize;
                                                                                                DialogThemeChooserBinding dialogThemeChooserBinding5 = this._binding;
                                                                                                dialogThemeChooserBinding5.getClass();
                                                                                                final int i3 = 2;
                                                                                                final int i4 = 1;
                                                                                                View[] viewArr = {textView6, dialogThemeChooserBinding5.buttonIncreaseTextSize};
                                                                                                for (int i5 = 0; i5 < 2; i5++) {
                                                                                                    View view = viewArr[i5];
                                                                                                    RegexKt.setTooltipText(view, view.getContentDescription());
                                                                                                }
                                                                                                DialogThemeChooserBinding dialogThemeChooserBinding6 = this._binding;
                                                                                                dialogThemeChooserBinding6.getClass();
                                                                                                dialogThemeChooserBinding6.buttonThemeLight.setOnClickListener(new ThemeButtonListener(this, Theme.LIGHT));
                                                                                                DialogThemeChooserBinding dialogThemeChooserBinding7 = this._binding;
                                                                                                dialogThemeChooserBinding7.getClass();
                                                                                                dialogThemeChooserBinding7.buttonThemeDark.setOnClickListener(new ThemeButtonListener(this, Theme.DARK));
                                                                                                DialogThemeChooserBinding dialogThemeChooserBinding8 = this._binding;
                                                                                                dialogThemeChooserBinding8.getClass();
                                                                                                dialogThemeChooserBinding8.buttonThemeBlack.setOnClickListener(new ThemeButtonListener(this, Theme.BLACK));
                                                                                                DialogThemeChooserBinding dialogThemeChooserBinding9 = this._binding;
                                                                                                dialogThemeChooserBinding9.getClass();
                                                                                                dialogThemeChooserBinding9.buttonThemeSepia.setOnClickListener(new ThemeButtonListener(this, Theme.SEPIA));
                                                                                                DialogThemeChooserBinding dialogThemeChooserBinding10 = this._binding;
                                                                                                dialogThemeChooserBinding10.getClass();
                                                                                                dialogThemeChooserBinding10.buttonFontFamilySansSerif.setOnClickListener(new Preference.AnonymousClass1(11, this));
                                                                                                DialogThemeChooserBinding dialogThemeChooserBinding11 = this._binding;
                                                                                                dialogThemeChooserBinding11.getClass();
                                                                                                dialogThemeChooserBinding11.buttonFontFamilySerif.setOnClickListener(new Preference.AnonymousClass1(11, this));
                                                                                                DialogThemeChooserBinding dialogThemeChooserBinding12 = this._binding;
                                                                                                dialogThemeChooserBinding12.getClass();
                                                                                                dialogThemeChooserBinding12.themeChooserDarkModeDimImagesSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: org.wikipedia.theme.ThemeChooserDialog$$ExternalSyntheticLambda0
                                                                                                    public final /* synthetic */ ThemeChooserDialog f$0;

                                                                                                    {
                                                                                                        this.f$0 = this;
                                                                                                    }

                                                                                                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                                                                                                    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                                                                                                        int i6 = i;
                                                                                                        ThemeChooserDialog themeChooserDialog = this.f$0;
                                                                                                        switch (i6) {
                                                                                                            case 0:
                                                                                                                int i7 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs = Prefs.INSTANCE;
                                                                                                                if (z == Prefs.getDimDarkModeImages()) {
                                                                                                                    return;
                                                                                                                }
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_dim_dark_mode_images, z);
                                                                                                                ThemeChooserDialog.Callback callback = themeChooserDialog.callback();
                                                                                                                if (callback != null) {
                                                                                                                    callback.onToggleDimImages();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 1:
                                                                                                                int i8 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                WikipediaApp wikipediaApp = themeChooserDialog.app;
                                                                                                                Prefs prefs2 = Prefs.INSTANCE;
                                                                                                                if (z == Prefs.getShouldMatchSystemTheme()) {
                                                                                                                    return;
                                                                                                                }
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_match_system_theme, z);
                                                                                                                Theme theme = wikipediaApp.currentTheme;
                                                                                                                if (ThemeChooserDialog.isMatchingSystemThemeEnabled()) {
                                                                                                                    int i9 = wikipediaApp.getResources().getConfiguration().uiMode & 48;
                                                                                                                    if (i9 != 16) {
                                                                                                                        if (i9 == 32 && !wikipediaApp.currentTheme.isDark()) {
                                                                                                                            wikipediaApp.setCurrentTheme(!WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()).isDark() ? Theme.DARK : WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()));
                                                                                                                            PrefsIoUtil.setInt(R.string.preference_key_previous_color_theme, theme.getMarshallingId());
                                                                                                                        }
                                                                                                                    } else if (wikipediaApp.currentTheme.isDark()) {
                                                                                                                        wikipediaApp.setCurrentTheme(WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()).isDark() ? Theme.LIGHT : WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()));
                                                                                                                        PrefsIoUtil.setInt(R.string.preference_key_previous_color_theme, theme.getMarshallingId());
                                                                                                                    }
                                                                                                                }
                                                                                                                themeChooserDialog.conditionallyDisableThemeButtons();
                                                                                                                return;
                                                                                                            case 2:
                                                                                                                int i10 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs3 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_reading_focus_mode, z);
                                                                                                                ConnectionPool connectionPool = themeChooserDialog.appearanceSettingInteractionEvent;
                                                                                                                if (connectionPool == null) {
                                                                                                                    Intrinsics.throwUninitializedPropertyAccessException("appearanceSettingInteractionEvent");
                                                                                                                    throw null;
                                                                                                                }
                                                                                                                connectionPool.submitEvent("readingFocusMode", String.valueOf(!z), String.valueOf(z));
                                                                                                                ThemeChooserDialog.Callback callback2 = themeChooserDialog.callback();
                                                                                                                if (callback2 != null) {
                                                                                                                    callback2.onToggleReadingFocusMode();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 3:
                                                                                                                int i11 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs4 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_syntax_highlight, z);
                                                                                                                ThemeChooserDialog.Callback callback3 = themeChooserDialog.callback();
                                                                                                                if (callback3 != null) {
                                                                                                                    callback3.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 4:
                                                                                                                int i12 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs5 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_monospace_font, z);
                                                                                                                ThemeChooserDialog.Callback callback4 = themeChooserDialog.callback();
                                                                                                                if (callback4 != null) {
                                                                                                                    callback4.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 5:
                                                                                                                int i13 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs6 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_line_numbers, z);
                                                                                                                ThemeChooserDialog.Callback callback5 = themeChooserDialog.callback();
                                                                                                                if (callback5 != null) {
                                                                                                                    callback5.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            default:
                                                                                                                int i14 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs7 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_typing_suggestions, z);
                                                                                                                ThemeChooserDialog.Callback callback6 = themeChooserDialog.callback();
                                                                                                                if (callback6 != null) {
                                                                                                                    callback6.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                        }
                                                                                                    }
                                                                                                });
                                                                                                DialogThemeChooserBinding dialogThemeChooserBinding13 = this._binding;
                                                                                                dialogThemeChooserBinding13.getClass();
                                                                                                dialogThemeChooserBinding13.themeChooserMatchSystemThemeSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: org.wikipedia.theme.ThemeChooserDialog$$ExternalSyntheticLambda0
                                                                                                    public final /* synthetic */ ThemeChooserDialog f$0;

                                                                                                    {
                                                                                                        this.f$0 = this;
                                                                                                    }

                                                                                                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                                                                                                    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                                                                                                        int i6 = i4;
                                                                                                        ThemeChooserDialog themeChooserDialog = this.f$0;
                                                                                                        switch (i6) {
                                                                                                            case 0:
                                                                                                                int i7 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs = Prefs.INSTANCE;
                                                                                                                if (z == Prefs.getDimDarkModeImages()) {
                                                                                                                    return;
                                                                                                                }
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_dim_dark_mode_images, z);
                                                                                                                ThemeChooserDialog.Callback callback = themeChooserDialog.callback();
                                                                                                                if (callback != null) {
                                                                                                                    callback.onToggleDimImages();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 1:
                                                                                                                int i8 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                WikipediaApp wikipediaApp = themeChooserDialog.app;
                                                                                                                Prefs prefs2 = Prefs.INSTANCE;
                                                                                                                if (z == Prefs.getShouldMatchSystemTheme()) {
                                                                                                                    return;
                                                                                                                }
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_match_system_theme, z);
                                                                                                                Theme theme = wikipediaApp.currentTheme;
                                                                                                                if (ThemeChooserDialog.isMatchingSystemThemeEnabled()) {
                                                                                                                    int i9 = wikipediaApp.getResources().getConfiguration().uiMode & 48;
                                                                                                                    if (i9 != 16) {
                                                                                                                        if (i9 == 32 && !wikipediaApp.currentTheme.isDark()) {
                                                                                                                            wikipediaApp.setCurrentTheme(!WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()).isDark() ? Theme.DARK : WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()));
                                                                                                                            PrefsIoUtil.setInt(R.string.preference_key_previous_color_theme, theme.getMarshallingId());
                                                                                                                        }
                                                                                                                    } else if (wikipediaApp.currentTheme.isDark()) {
                                                                                                                        wikipediaApp.setCurrentTheme(WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()).isDark() ? Theme.LIGHT : WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()));
                                                                                                                        PrefsIoUtil.setInt(R.string.preference_key_previous_color_theme, theme.getMarshallingId());
                                                                                                                    }
                                                                                                                }
                                                                                                                themeChooserDialog.conditionallyDisableThemeButtons();
                                                                                                                return;
                                                                                                            case 2:
                                                                                                                int i10 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs3 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_reading_focus_mode, z);
                                                                                                                ConnectionPool connectionPool = themeChooserDialog.appearanceSettingInteractionEvent;
                                                                                                                if (connectionPool == null) {
                                                                                                                    Intrinsics.throwUninitializedPropertyAccessException("appearanceSettingInteractionEvent");
                                                                                                                    throw null;
                                                                                                                }
                                                                                                                connectionPool.submitEvent("readingFocusMode", String.valueOf(!z), String.valueOf(z));
                                                                                                                ThemeChooserDialog.Callback callback2 = themeChooserDialog.callback();
                                                                                                                if (callback2 != null) {
                                                                                                                    callback2.onToggleReadingFocusMode();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 3:
                                                                                                                int i11 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs4 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_syntax_highlight, z);
                                                                                                                ThemeChooserDialog.Callback callback3 = themeChooserDialog.callback();
                                                                                                                if (callback3 != null) {
                                                                                                                    callback3.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 4:
                                                                                                                int i12 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs5 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_monospace_font, z);
                                                                                                                ThemeChooserDialog.Callback callback4 = themeChooserDialog.callback();
                                                                                                                if (callback4 != null) {
                                                                                                                    callback4.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 5:
                                                                                                                int i13 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs6 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_line_numbers, z);
                                                                                                                ThemeChooserDialog.Callback callback5 = themeChooserDialog.callback();
                                                                                                                if (callback5 != null) {
                                                                                                                    callback5.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            default:
                                                                                                                int i14 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs7 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_typing_suggestions, z);
                                                                                                                ThemeChooserDialog.Callback callback6 = themeChooserDialog.callback();
                                                                                                                if (callback6 != null) {
                                                                                                                    callback6.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                        }
                                                                                                    }
                                                                                                });
                                                                                                DialogThemeChooserBinding dialogThemeChooserBinding14 = this._binding;
                                                                                                dialogThemeChooserBinding14.getClass();
                                                                                                dialogThemeChooserBinding14.themeChooserReadingFocusModeSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: org.wikipedia.theme.ThemeChooserDialog$$ExternalSyntheticLambda0
                                                                                                    public final /* synthetic */ ThemeChooserDialog f$0;

                                                                                                    {
                                                                                                        this.f$0 = this;
                                                                                                    }

                                                                                                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                                                                                                    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                                                                                                        int i6 = i3;
                                                                                                        ThemeChooserDialog themeChooserDialog = this.f$0;
                                                                                                        switch (i6) {
                                                                                                            case 0:
                                                                                                                int i7 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs = Prefs.INSTANCE;
                                                                                                                if (z == Prefs.getDimDarkModeImages()) {
                                                                                                                    return;
                                                                                                                }
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_dim_dark_mode_images, z);
                                                                                                                ThemeChooserDialog.Callback callback = themeChooserDialog.callback();
                                                                                                                if (callback != null) {
                                                                                                                    callback.onToggleDimImages();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 1:
                                                                                                                int i8 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                WikipediaApp wikipediaApp = themeChooserDialog.app;
                                                                                                                Prefs prefs2 = Prefs.INSTANCE;
                                                                                                                if (z == Prefs.getShouldMatchSystemTheme()) {
                                                                                                                    return;
                                                                                                                }
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_match_system_theme, z);
                                                                                                                Theme theme = wikipediaApp.currentTheme;
                                                                                                                if (ThemeChooserDialog.isMatchingSystemThemeEnabled()) {
                                                                                                                    int i9 = wikipediaApp.getResources().getConfiguration().uiMode & 48;
                                                                                                                    if (i9 != 16) {
                                                                                                                        if (i9 == 32 && !wikipediaApp.currentTheme.isDark()) {
                                                                                                                            wikipediaApp.setCurrentTheme(!WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()).isDark() ? Theme.DARK : WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()));
                                                                                                                            PrefsIoUtil.setInt(R.string.preference_key_previous_color_theme, theme.getMarshallingId());
                                                                                                                        }
                                                                                                                    } else if (wikipediaApp.currentTheme.isDark()) {
                                                                                                                        wikipediaApp.setCurrentTheme(WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()).isDark() ? Theme.LIGHT : WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()));
                                                                                                                        PrefsIoUtil.setInt(R.string.preference_key_previous_color_theme, theme.getMarshallingId());
                                                                                                                    }
                                                                                                                }
                                                                                                                themeChooserDialog.conditionallyDisableThemeButtons();
                                                                                                                return;
                                                                                                            case 2:
                                                                                                                int i10 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs3 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_reading_focus_mode, z);
                                                                                                                ConnectionPool connectionPool = themeChooserDialog.appearanceSettingInteractionEvent;
                                                                                                                if (connectionPool == null) {
                                                                                                                    Intrinsics.throwUninitializedPropertyAccessException("appearanceSettingInteractionEvent");
                                                                                                                    throw null;
                                                                                                                }
                                                                                                                connectionPool.submitEvent("readingFocusMode", String.valueOf(!z), String.valueOf(z));
                                                                                                                ThemeChooserDialog.Callback callback2 = themeChooserDialog.callback();
                                                                                                                if (callback2 != null) {
                                                                                                                    callback2.onToggleReadingFocusMode();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 3:
                                                                                                                int i11 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs4 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_syntax_highlight, z);
                                                                                                                ThemeChooserDialog.Callback callback3 = themeChooserDialog.callback();
                                                                                                                if (callback3 != null) {
                                                                                                                    callback3.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 4:
                                                                                                                int i12 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs5 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_monospace_font, z);
                                                                                                                ThemeChooserDialog.Callback callback4 = themeChooserDialog.callback();
                                                                                                                if (callback4 != null) {
                                                                                                                    callback4.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 5:
                                                                                                                int i13 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs6 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_line_numbers, z);
                                                                                                                ThemeChooserDialog.Callback callback5 = themeChooserDialog.callback();
                                                                                                                if (callback5 != null) {
                                                                                                                    callback5.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            default:
                                                                                                                int i14 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs7 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_typing_suggestions, z);
                                                                                                                ThemeChooserDialog.Callback callback6 = themeChooserDialog.callback();
                                                                                                                if (callback6 != null) {
                                                                                                                    callback6.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                        }
                                                                                                    }
                                                                                                });
                                                                                                DialogThemeChooserBinding dialogThemeChooserBinding15 = this._binding;
                                                                                                dialogThemeChooserBinding15.getClass();
                                                                                                dialogThemeChooserBinding15.textSizeSeekBar.setOnSeekBarChangeListener(new SeekBarPreference.AnonymousClass1(i4, this));
                                                                                                DialogThemeChooserBinding dialogThemeChooserBinding16 = this._binding;
                                                                                                dialogThemeChooserBinding16.getClass();
                                                                                                final int i6 = 3;
                                                                                                dialogThemeChooserBinding16.syntaxHighlightSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: org.wikipedia.theme.ThemeChooserDialog$$ExternalSyntheticLambda0
                                                                                                    public final /* synthetic */ ThemeChooserDialog f$0;

                                                                                                    {
                                                                                                        this.f$0 = this;
                                                                                                    }

                                                                                                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                                                                                                    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                                                                                                        int i62 = i6;
                                                                                                        ThemeChooserDialog themeChooserDialog = this.f$0;
                                                                                                        switch (i62) {
                                                                                                            case 0:
                                                                                                                int i7 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs = Prefs.INSTANCE;
                                                                                                                if (z == Prefs.getDimDarkModeImages()) {
                                                                                                                    return;
                                                                                                                }
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_dim_dark_mode_images, z);
                                                                                                                ThemeChooserDialog.Callback callback = themeChooserDialog.callback();
                                                                                                                if (callback != null) {
                                                                                                                    callback.onToggleDimImages();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 1:
                                                                                                                int i8 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                WikipediaApp wikipediaApp = themeChooserDialog.app;
                                                                                                                Prefs prefs2 = Prefs.INSTANCE;
                                                                                                                if (z == Prefs.getShouldMatchSystemTheme()) {
                                                                                                                    return;
                                                                                                                }
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_match_system_theme, z);
                                                                                                                Theme theme = wikipediaApp.currentTheme;
                                                                                                                if (ThemeChooserDialog.isMatchingSystemThemeEnabled()) {
                                                                                                                    int i9 = wikipediaApp.getResources().getConfiguration().uiMode & 48;
                                                                                                                    if (i9 != 16) {
                                                                                                                        if (i9 == 32 && !wikipediaApp.currentTheme.isDark()) {
                                                                                                                            wikipediaApp.setCurrentTheme(!WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()).isDark() ? Theme.DARK : WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()));
                                                                                                                            PrefsIoUtil.setInt(R.string.preference_key_previous_color_theme, theme.getMarshallingId());
                                                                                                                        }
                                                                                                                    } else if (wikipediaApp.currentTheme.isDark()) {
                                                                                                                        wikipediaApp.setCurrentTheme(WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()).isDark() ? Theme.LIGHT : WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()));
                                                                                                                        PrefsIoUtil.setInt(R.string.preference_key_previous_color_theme, theme.getMarshallingId());
                                                                                                                    }
                                                                                                                }
                                                                                                                themeChooserDialog.conditionallyDisableThemeButtons();
                                                                                                                return;
                                                                                                            case 2:
                                                                                                                int i10 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs3 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_reading_focus_mode, z);
                                                                                                                ConnectionPool connectionPool = themeChooserDialog.appearanceSettingInteractionEvent;
                                                                                                                if (connectionPool == null) {
                                                                                                                    Intrinsics.throwUninitializedPropertyAccessException("appearanceSettingInteractionEvent");
                                                                                                                    throw null;
                                                                                                                }
                                                                                                                connectionPool.submitEvent("readingFocusMode", String.valueOf(!z), String.valueOf(z));
                                                                                                                ThemeChooserDialog.Callback callback2 = themeChooserDialog.callback();
                                                                                                                if (callback2 != null) {
                                                                                                                    callback2.onToggleReadingFocusMode();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 3:
                                                                                                                int i11 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs4 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_syntax_highlight, z);
                                                                                                                ThemeChooserDialog.Callback callback3 = themeChooserDialog.callback();
                                                                                                                if (callback3 != null) {
                                                                                                                    callback3.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 4:
                                                                                                                int i12 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs5 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_monospace_font, z);
                                                                                                                ThemeChooserDialog.Callback callback4 = themeChooserDialog.callback();
                                                                                                                if (callback4 != null) {
                                                                                                                    callback4.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 5:
                                                                                                                int i13 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs6 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_line_numbers, z);
                                                                                                                ThemeChooserDialog.Callback callback5 = themeChooserDialog.callback();
                                                                                                                if (callback5 != null) {
                                                                                                                    callback5.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            default:
                                                                                                                int i14 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs7 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_typing_suggestions, z);
                                                                                                                ThemeChooserDialog.Callback callback6 = themeChooserDialog.callback();
                                                                                                                if (callback6 != null) {
                                                                                                                    callback6.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                        }
                                                                                                    }
                                                                                                });
                                                                                                DialogThemeChooserBinding dialogThemeChooserBinding17 = this._binding;
                                                                                                dialogThemeChooserBinding17.getClass();
                                                                                                final int i7 = 4;
                                                                                                dialogThemeChooserBinding17.monospaceFontSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: org.wikipedia.theme.ThemeChooserDialog$$ExternalSyntheticLambda0
                                                                                                    public final /* synthetic */ ThemeChooserDialog f$0;

                                                                                                    {
                                                                                                        this.f$0 = this;
                                                                                                    }

                                                                                                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                                                                                                    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                                                                                                        int i62 = i7;
                                                                                                        ThemeChooserDialog themeChooserDialog = this.f$0;
                                                                                                        switch (i62) {
                                                                                                            case 0:
                                                                                                                int i72 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs = Prefs.INSTANCE;
                                                                                                                if (z == Prefs.getDimDarkModeImages()) {
                                                                                                                    return;
                                                                                                                }
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_dim_dark_mode_images, z);
                                                                                                                ThemeChooserDialog.Callback callback = themeChooserDialog.callback();
                                                                                                                if (callback != null) {
                                                                                                                    callback.onToggleDimImages();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 1:
                                                                                                                int i8 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                WikipediaApp wikipediaApp = themeChooserDialog.app;
                                                                                                                Prefs prefs2 = Prefs.INSTANCE;
                                                                                                                if (z == Prefs.getShouldMatchSystemTheme()) {
                                                                                                                    return;
                                                                                                                }
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_match_system_theme, z);
                                                                                                                Theme theme = wikipediaApp.currentTheme;
                                                                                                                if (ThemeChooserDialog.isMatchingSystemThemeEnabled()) {
                                                                                                                    int i9 = wikipediaApp.getResources().getConfiguration().uiMode & 48;
                                                                                                                    if (i9 != 16) {
                                                                                                                        if (i9 == 32 && !wikipediaApp.currentTheme.isDark()) {
                                                                                                                            wikipediaApp.setCurrentTheme(!WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()).isDark() ? Theme.DARK : WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()));
                                                                                                                            PrefsIoUtil.setInt(R.string.preference_key_previous_color_theme, theme.getMarshallingId());
                                                                                                                        }
                                                                                                                    } else if (wikipediaApp.currentTheme.isDark()) {
                                                                                                                        wikipediaApp.setCurrentTheme(WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()).isDark() ? Theme.LIGHT : WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()));
                                                                                                                        PrefsIoUtil.setInt(R.string.preference_key_previous_color_theme, theme.getMarshallingId());
                                                                                                                    }
                                                                                                                }
                                                                                                                themeChooserDialog.conditionallyDisableThemeButtons();
                                                                                                                return;
                                                                                                            case 2:
                                                                                                                int i10 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs3 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_reading_focus_mode, z);
                                                                                                                ConnectionPool connectionPool = themeChooserDialog.appearanceSettingInteractionEvent;
                                                                                                                if (connectionPool == null) {
                                                                                                                    Intrinsics.throwUninitializedPropertyAccessException("appearanceSettingInteractionEvent");
                                                                                                                    throw null;
                                                                                                                }
                                                                                                                connectionPool.submitEvent("readingFocusMode", String.valueOf(!z), String.valueOf(z));
                                                                                                                ThemeChooserDialog.Callback callback2 = themeChooserDialog.callback();
                                                                                                                if (callback2 != null) {
                                                                                                                    callback2.onToggleReadingFocusMode();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 3:
                                                                                                                int i11 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs4 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_syntax_highlight, z);
                                                                                                                ThemeChooserDialog.Callback callback3 = themeChooserDialog.callback();
                                                                                                                if (callback3 != null) {
                                                                                                                    callback3.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 4:
                                                                                                                int i12 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs5 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_monospace_font, z);
                                                                                                                ThemeChooserDialog.Callback callback4 = themeChooserDialog.callback();
                                                                                                                if (callback4 != null) {
                                                                                                                    callback4.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 5:
                                                                                                                int i13 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs6 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_line_numbers, z);
                                                                                                                ThemeChooserDialog.Callback callback5 = themeChooserDialog.callback();
                                                                                                                if (callback5 != null) {
                                                                                                                    callback5.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            default:
                                                                                                                int i14 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs7 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_typing_suggestions, z);
                                                                                                                ThemeChooserDialog.Callback callback6 = themeChooserDialog.callback();
                                                                                                                if (callback6 != null) {
                                                                                                                    callback6.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                        }
                                                                                                    }
                                                                                                });
                                                                                                DialogThemeChooserBinding dialogThemeChooserBinding18 = this._binding;
                                                                                                dialogThemeChooserBinding18.getClass();
                                                                                                final int i8 = 5;
                                                                                                dialogThemeChooserBinding18.showLineNumbersSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: org.wikipedia.theme.ThemeChooserDialog$$ExternalSyntheticLambda0
                                                                                                    public final /* synthetic */ ThemeChooserDialog f$0;

                                                                                                    {
                                                                                                        this.f$0 = this;
                                                                                                    }

                                                                                                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                                                                                                    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                                                                                                        int i62 = i8;
                                                                                                        ThemeChooserDialog themeChooserDialog = this.f$0;
                                                                                                        switch (i62) {
                                                                                                            case 0:
                                                                                                                int i72 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs = Prefs.INSTANCE;
                                                                                                                if (z == Prefs.getDimDarkModeImages()) {
                                                                                                                    return;
                                                                                                                }
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_dim_dark_mode_images, z);
                                                                                                                ThemeChooserDialog.Callback callback = themeChooserDialog.callback();
                                                                                                                if (callback != null) {
                                                                                                                    callback.onToggleDimImages();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 1:
                                                                                                                int i82 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                WikipediaApp wikipediaApp = themeChooserDialog.app;
                                                                                                                Prefs prefs2 = Prefs.INSTANCE;
                                                                                                                if (z == Prefs.getShouldMatchSystemTheme()) {
                                                                                                                    return;
                                                                                                                }
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_match_system_theme, z);
                                                                                                                Theme theme = wikipediaApp.currentTheme;
                                                                                                                if (ThemeChooserDialog.isMatchingSystemThemeEnabled()) {
                                                                                                                    int i9 = wikipediaApp.getResources().getConfiguration().uiMode & 48;
                                                                                                                    if (i9 != 16) {
                                                                                                                        if (i9 == 32 && !wikipediaApp.currentTheme.isDark()) {
                                                                                                                            wikipediaApp.setCurrentTheme(!WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()).isDark() ? Theme.DARK : WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()));
                                                                                                                            PrefsIoUtil.setInt(R.string.preference_key_previous_color_theme, theme.getMarshallingId());
                                                                                                                        }
                                                                                                                    } else if (wikipediaApp.currentTheme.isDark()) {
                                                                                                                        wikipediaApp.setCurrentTheme(WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()).isDark() ? Theme.LIGHT : WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()));
                                                                                                                        PrefsIoUtil.setInt(R.string.preference_key_previous_color_theme, theme.getMarshallingId());
                                                                                                                    }
                                                                                                                }
                                                                                                                themeChooserDialog.conditionallyDisableThemeButtons();
                                                                                                                return;
                                                                                                            case 2:
                                                                                                                int i10 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs3 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_reading_focus_mode, z);
                                                                                                                ConnectionPool connectionPool = themeChooserDialog.appearanceSettingInteractionEvent;
                                                                                                                if (connectionPool == null) {
                                                                                                                    Intrinsics.throwUninitializedPropertyAccessException("appearanceSettingInteractionEvent");
                                                                                                                    throw null;
                                                                                                                }
                                                                                                                connectionPool.submitEvent("readingFocusMode", String.valueOf(!z), String.valueOf(z));
                                                                                                                ThemeChooserDialog.Callback callback2 = themeChooserDialog.callback();
                                                                                                                if (callback2 != null) {
                                                                                                                    callback2.onToggleReadingFocusMode();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 3:
                                                                                                                int i11 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs4 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_syntax_highlight, z);
                                                                                                                ThemeChooserDialog.Callback callback3 = themeChooserDialog.callback();
                                                                                                                if (callback3 != null) {
                                                                                                                    callback3.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 4:
                                                                                                                int i12 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs5 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_monospace_font, z);
                                                                                                                ThemeChooserDialog.Callback callback4 = themeChooserDialog.callback();
                                                                                                                if (callback4 != null) {
                                                                                                                    callback4.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 5:
                                                                                                                int i13 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs6 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_line_numbers, z);
                                                                                                                ThemeChooserDialog.Callback callback5 = themeChooserDialog.callback();
                                                                                                                if (callback5 != null) {
                                                                                                                    callback5.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            default:
                                                                                                                int i14 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs7 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_typing_suggestions, z);
                                                                                                                ThemeChooserDialog.Callback callback6 = themeChooserDialog.callback();
                                                                                                                if (callback6 != null) {
                                                                                                                    callback6.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                        }
                                                                                                    }
                                                                                                });
                                                                                                DialogThemeChooserBinding dialogThemeChooserBinding19 = this._binding;
                                                                                                dialogThemeChooserBinding19.getClass();
                                                                                                final int i9 = 6;
                                                                                                dialogThemeChooserBinding19.typingSuggestionsSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: org.wikipedia.theme.ThemeChooserDialog$$ExternalSyntheticLambda0
                                                                                                    public final /* synthetic */ ThemeChooserDialog f$0;

                                                                                                    {
                                                                                                        this.f$0 = this;
                                                                                                    }

                                                                                                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                                                                                                    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                                                                                                        int i62 = i9;
                                                                                                        ThemeChooserDialog themeChooserDialog = this.f$0;
                                                                                                        switch (i62) {
                                                                                                            case 0:
                                                                                                                int i72 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs = Prefs.INSTANCE;
                                                                                                                if (z == Prefs.getDimDarkModeImages()) {
                                                                                                                    return;
                                                                                                                }
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_dim_dark_mode_images, z);
                                                                                                                ThemeChooserDialog.Callback callback = themeChooserDialog.callback();
                                                                                                                if (callback != null) {
                                                                                                                    callback.onToggleDimImages();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 1:
                                                                                                                int i82 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                WikipediaApp wikipediaApp = themeChooserDialog.app;
                                                                                                                Prefs prefs2 = Prefs.INSTANCE;
                                                                                                                if (z == Prefs.getShouldMatchSystemTheme()) {
                                                                                                                    return;
                                                                                                                }
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_match_system_theme, z);
                                                                                                                Theme theme = wikipediaApp.currentTheme;
                                                                                                                if (ThemeChooserDialog.isMatchingSystemThemeEnabled()) {
                                                                                                                    int i92 = wikipediaApp.getResources().getConfiguration().uiMode & 48;
                                                                                                                    if (i92 != 16) {
                                                                                                                        if (i92 == 32 && !wikipediaApp.currentTheme.isDark()) {
                                                                                                                            wikipediaApp.setCurrentTheme(!WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()).isDark() ? Theme.DARK : WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()));
                                                                                                                            PrefsIoUtil.setInt(R.string.preference_key_previous_color_theme, theme.getMarshallingId());
                                                                                                                        }
                                                                                                                    } else if (wikipediaApp.currentTheme.isDark()) {
                                                                                                                        wikipediaApp.setCurrentTheme(WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()).isDark() ? Theme.LIGHT : WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()));
                                                                                                                        PrefsIoUtil.setInt(R.string.preference_key_previous_color_theme, theme.getMarshallingId());
                                                                                                                    }
                                                                                                                }
                                                                                                                themeChooserDialog.conditionallyDisableThemeButtons();
                                                                                                                return;
                                                                                                            case 2:
                                                                                                                int i10 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs3 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_reading_focus_mode, z);
                                                                                                                ConnectionPool connectionPool = themeChooserDialog.appearanceSettingInteractionEvent;
                                                                                                                if (connectionPool == null) {
                                                                                                                    Intrinsics.throwUninitializedPropertyAccessException("appearanceSettingInteractionEvent");
                                                                                                                    throw null;
                                                                                                                }
                                                                                                                connectionPool.submitEvent("readingFocusMode", String.valueOf(!z), String.valueOf(z));
                                                                                                                ThemeChooserDialog.Callback callback2 = themeChooserDialog.callback();
                                                                                                                if (callback2 != null) {
                                                                                                                    callback2.onToggleReadingFocusMode();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 3:
                                                                                                                int i11 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs4 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_syntax_highlight, z);
                                                                                                                ThemeChooserDialog.Callback callback3 = themeChooserDialog.callback();
                                                                                                                if (callback3 != null) {
                                                                                                                    callback3.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 4:
                                                                                                                int i12 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs5 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_monospace_font, z);
                                                                                                                ThemeChooserDialog.Callback callback4 = themeChooserDialog.callback();
                                                                                                                if (callback4 != null) {
                                                                                                                    callback4.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            case 5:
                                                                                                                int i13 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs6 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_line_numbers, z);
                                                                                                                ThemeChooserDialog.Callback callback5 = themeChooserDialog.callback();
                                                                                                                if (callback5 != null) {
                                                                                                                    callback5.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                            default:
                                                                                                                int i14 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                                                                                                                compoundButton.getClass();
                                                                                                                Prefs prefs7 = Prefs.INSTANCE;
                                                                                                                PrefsIoUtil.setBoolean(R.string.preference_key_edit_typing_suggestions, z);
                                                                                                                ThemeChooserDialog.Callback callback6 = themeChooserDialog.callback();
                                                                                                                if (callback6 != null) {
                                                                                                                    callback6.onEditingPrefsChanged();
                                                                                                                    return;
                                                                                                                }
                                                                                                                return;
                                                                                                        }
                                                                                                    }
                                                                                                });
                                                                                                AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new ThemeChooserDialog$onCreateView$9(this, continuation, i), 3);
                                                                                                DialogThemeChooserBinding dialogThemeChooserBinding20 = this._binding;
                                                                                                dialogThemeChooserBinding20.getClass();
                                                                                                FrameLayout frameLayout = dialogThemeChooserBinding20.rootView;
                                                                                                frameLayout.getClass();
                                                                                                return frameLayout;
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this._binding = null;
    }

    @Override // org.wikipedia.page.ExtendedBottomSheetDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        Object parent = requireView().getParent();
        parent.getClass();
        BottomSheetBehavior from = BottomSheetBehavior.from((View) parent);
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Resources resources = Jsoup.getInstance().getResources();
        resources.getClass();
        resources.getDisplayMetrics().getClass();
        from.setPeekHeight((int) (r0.heightPixels * 0.75d));
    }

    public final void updateComponents() {
        updateFontSize$1();
        DialogThemeChooserBinding dialogThemeChooserBinding = this._binding;
        dialogThemeChooserBinding.getClass();
        MaterialButton materialButton = dialogThemeChooserBinding.buttonFontFamilySansSerif;
        Context requireContext = requireContext();
        Prefs prefs = Prefs.INSTANCE;
        String fontFamily = Prefs.getFontFamily();
        DialogThemeChooserBinding dialogThemeChooserBinding2 = this._binding;
        dialogThemeChooserBinding2.getClass();
        boolean equals = fontFamily.equals(dialogThemeChooserBinding2.buttonFontFamilySansSerif.getTag());
        int i = R.attr.border_color;
        materialButton.setStrokeColor(ColorStateList.valueOf(Cache.Companion.getThemedColor(requireContext, equals ? R.attr.progressive_color : R.attr.border_color)));
        DialogThemeChooserBinding dialogThemeChooserBinding3 = this._binding;
        dialogThemeChooserBinding3.getClass();
        MaterialButton materialButton2 = dialogThemeChooserBinding3.buttonFontFamilySerif;
        Context requireContext2 = requireContext();
        String fontFamily2 = Prefs.getFontFamily();
        DialogThemeChooserBinding dialogThemeChooserBinding4 = this._binding;
        dialogThemeChooserBinding4.getClass();
        if (fontFamily2.equals(dialogThemeChooserBinding4.buttonFontFamilySerif.getTag())) {
            i = R.attr.progressive_color;
        }
        materialButton2.setStrokeColor(ColorStateList.valueOf(Cache.Companion.getThemedColor(requireContext2, i)));
        DialogThemeChooserBinding dialogThemeChooserBinding5 = this._binding;
        dialogThemeChooserBinding5.getClass();
        MaterialButton materialButton3 = dialogThemeChooserBinding5.buttonThemeLight;
        WikipediaApp wikipediaApp = this.app;
        updateThemeButtonStroke(materialButton3, wikipediaApp.currentTheme == Theme.LIGHT);
        DialogThemeChooserBinding dialogThemeChooserBinding6 = this._binding;
        dialogThemeChooserBinding6.getClass();
        updateThemeButtonStroke(dialogThemeChooserBinding6.buttonThemeSepia, wikipediaApp.currentTheme == Theme.SEPIA);
        DialogThemeChooserBinding dialogThemeChooserBinding7 = this._binding;
        dialogThemeChooserBinding7.getClass();
        updateThemeButtonStroke(dialogThemeChooserBinding7.buttonThemeDark, wikipediaApp.currentTheme == Theme.DARK);
        DialogThemeChooserBinding dialogThemeChooserBinding8 = this._binding;
        dialogThemeChooserBinding8.getClass();
        updateThemeButtonStroke(dialogThemeChooserBinding8.buttonThemeBlack, wikipediaApp.currentTheme == Theme.BLACK);
        DialogThemeChooserBinding dialogThemeChooserBinding9 = this._binding;
        dialogThemeChooserBinding9.getClass();
        int i2 = dialogThemeChooserBinding9.themeChooserDarkModeDimImagesSwitch.isEnabled() ? R.attr.secondary_color : R.attr.overlay_color;
        DialogThemeChooserBinding dialogThemeChooserBinding10 = this._binding;
        dialogThemeChooserBinding10.getClass();
        dialogThemeChooserBinding10.themeChooserDarkModeDimImagesSwitch.setChecked(Prefs.getDimDarkModeImages());
        DialogThemeChooserBinding dialogThemeChooserBinding11 = this._binding;
        dialogThemeChooserBinding11.getClass();
        dialogThemeChooserBinding11.themeChooserDarkModeDimImagesSwitch.setEnabled(wikipediaApp.currentTheme.isDark());
        DialogThemeChooserBinding dialogThemeChooserBinding12 = this._binding;
        dialogThemeChooserBinding12.getClass();
        MaterialSwitch materialSwitch = dialogThemeChooserBinding12.themeChooserDarkModeDimImagesSwitch;
        Context requireContext3 = requireContext();
        TypedValue typedValue = new TypedValue();
        if (!requireContext3.getTheme().resolveAttribute(i2, typedValue, true)) {
            typedValue = null;
        }
        if (typedValue == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i2, "Attribute not found; ID="));
            return;
        }
        materialSwitch.setTextColor(typedValue.data);
        int i3 = Build.VERSION.SDK_INT;
        DialogThemeChooserBinding dialogThemeChooserBinding13 = this._binding;
        if (i3 >= 29) {
            dialogThemeChooserBinding13.getClass();
            dialogThemeChooserBinding13.themeChooserMatchSystemThemeSwitch.setVisibility(0);
            DialogThemeChooserBinding dialogThemeChooserBinding14 = this._binding;
            dialogThemeChooserBinding14.getClass();
            dialogThemeChooserBinding14.themeChooserMatchSystemThemeSwitch.setChecked(Prefs.getShouldMatchSystemTheme());
            conditionallyDisableThemeButtons();
        } else {
            dialogThemeChooserBinding13.getClass();
            dialogThemeChooserBinding13.themeChooserMatchSystemThemeSwitch.setVisibility(8);
        }
        DialogThemeChooserBinding dialogThemeChooserBinding15 = this._binding;
        dialogThemeChooserBinding15.getClass();
        dialogThemeChooserBinding15.themeChooserDarkModeDimImagesSwitch.setVisibility(!this.isEditing ? 0 : 8);
        DialogThemeChooserBinding dialogThemeChooserBinding16 = this._binding;
        dialogThemeChooserBinding16.getClass();
        dialogThemeChooserBinding16.readingFocusModeContainer.setVisibility(!this.isEditing ? 0 : 8);
        DialogThemeChooserBinding dialogThemeChooserBinding17 = this._binding;
        dialogThemeChooserBinding17.getClass();
        dialogThemeChooserBinding17.themeChooserReadingFocusModeDescription.setVisibility(!this.isEditing ? 0 : 8);
        DialogThemeChooserBinding dialogThemeChooserBinding18 = this._binding;
        dialogThemeChooserBinding18.getClass();
        dialogThemeChooserBinding18.fontFamilyContainer.setVisibility(!this.isEditing ? 0 : 8);
        DialogThemeChooserBinding dialogThemeChooserBinding19 = this._binding;
        dialogThemeChooserBinding19.getClass();
        dialogThemeChooserBinding19.syntaxHighlightSwitch.setVisibility(this.isEditing ? 0 : 8);
        DialogThemeChooserBinding dialogThemeChooserBinding20 = this._binding;
        dialogThemeChooserBinding20.getClass();
        dialogThemeChooserBinding20.monospaceFontSwitch.setVisibility(this.isEditing ? 0 : 8);
        DialogThemeChooserBinding dialogThemeChooserBinding21 = this._binding;
        dialogThemeChooserBinding21.getClass();
        dialogThemeChooserBinding21.showLineNumbersSwitch.setVisibility(this.isEditing ? 0 : 8);
        DialogThemeChooserBinding dialogThemeChooserBinding22 = this._binding;
        dialogThemeChooserBinding22.getClass();
        dialogThemeChooserBinding22.typingSuggestionsSwitch.setVisibility(this.isEditing ? 0 : 8);
        DialogThemeChooserBinding dialogThemeChooserBinding23 = this._binding;
        dialogThemeChooserBinding23.getClass();
        dialogThemeChooserBinding23.themeChooserReadingFocusModeSwitch.setChecked(Prefs.getReadingFocusModeEnabled());
        DialogThemeChooserBinding dialogThemeChooserBinding24 = this._binding;
        dialogThemeChooserBinding24.getClass();
        dialogThemeChooserBinding24.syntaxHighlightSwitch.setChecked(Prefs.getEditSyntaxHighlightEnabled());
        DialogThemeChooserBinding dialogThemeChooserBinding25 = this._binding;
        dialogThemeChooserBinding25.getClass();
        dialogThemeChooserBinding25.monospaceFontSwitch.setChecked(Prefs.getEditMonoSpaceFontEnabled());
        DialogThemeChooserBinding dialogThemeChooserBinding26 = this._binding;
        dialogThemeChooserBinding26.getClass();
        dialogThemeChooserBinding26.showLineNumbersSwitch.setChecked(Prefs.getEditLineNumbersEnabled());
        DialogThemeChooserBinding dialogThemeChooserBinding27 = this._binding;
        dialogThemeChooserBinding27.getClass();
        dialogThemeChooserBinding27.typingSuggestionsSwitch.setChecked(Prefs.getEditTypingSuggestionsEnabled());
    }

    public final void updateFontSize$1() {
        int textSizeMultiplier;
        if (this.isEditing) {
            Prefs prefs = Prefs.INSTANCE;
            textSizeMultiplier = PrefsIoUtil.getInt(R.string.preference_key_editing_text_size_multiplier, 0);
        } else {
            Prefs prefs2 = Prefs.INSTANCE;
            textSizeMultiplier = Prefs.getTextSizeMultiplier();
        }
        DialogThemeChooserBinding dialogThemeChooserBinding = this._binding;
        dialogThemeChooserBinding.getClass();
        dialogThemeChooserBinding.textSizeSeekBar.setValue(textSizeMultiplier);
        TypedValue typedValue = new TypedValue();
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Resources resources = Jsoup.getInstance().getResources();
        resources.getClass();
        resources.getValue(R.dimen.textSizeMultiplierFactor, typedValue, true);
        String string = getString(R.string.text_size_percent, Integer.valueOf((int) (((typedValue.getFloat() * textSizeMultiplier) + 1.0f) * 100.0f)));
        string.getClass();
        DialogThemeChooserBinding dialogThemeChooserBinding2 = this._binding;
        dialogThemeChooserBinding2.getClass();
        TextView textView = dialogThemeChooserBinding2.textSizePercent;
        if (textSizeMultiplier == 0) {
            string = getString(R.string.text_size_percent_default, string);
        }
        textView.setText(string);
        boolean z = this.updatingFont;
        DialogThemeChooserBinding dialogThemeChooserBinding3 = this._binding;
        if (z) {
            dialogThemeChooserBinding3.getClass();
            dialogThemeChooserBinding3.fontChangeProgressBar.setVisibility(0);
        } else {
            dialogThemeChooserBinding3.getClass();
            dialogThemeChooserBinding3.fontChangeProgressBar.setVisibility(8);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ThemeButtonListener implements View.OnClickListener {
        public final /* synthetic */ int $r8$classId = 0;
        public final Enum theme;
        public final /* synthetic */ ThemeChooserDialog this$0;

        public ThemeButtonListener(ThemeChooserDialog themeChooserDialog, Theme theme) {
            theme.getClass();
            this.this$0 = themeChooserDialog;
            this.theme = theme;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int textSizeMultiplier;
            boolean fontSizeMultiplier;
            int i = this.$r8$classId;
            ThemeChooserDialog themeChooserDialog = this.this$0;
            Enum r10 = this.theme;
            switch (i) {
                case 0:
                    view.getClass();
                    WikipediaApp wikipediaApp = themeChooserDialog.app;
                    Theme theme = wikipediaApp.currentTheme;
                    Theme theme2 = (Theme) r10;
                    if (theme != theme2) {
                        ConnectionPool connectionPool = themeChooserDialog.appearanceSettingInteractionEvent;
                        if (connectionPool == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("appearanceSettingInteractionEvent");
                            throw null;
                        }
                        theme.getClass();
                        theme2.getClass();
                        connectionPool.submitEvent("themeChange", theme.getTag(), theme2.getTag());
                        wikipediaApp.setCurrentTheme(theme2);
                        return;
                    }
                    return;
                default:
                    FontSizeAction fontSizeAction = (FontSizeAction) r10;
                    view.getClass();
                    WikipediaApp wikipediaApp2 = themeChooserDialog.app;
                    int i2 = 0;
                    if (themeChooserDialog.isEditing) {
                        Prefs prefs = Prefs.INSTANCE;
                        textSizeMultiplier = PrefsIoUtil.getInt(R.string.preference_key_editing_text_size_multiplier, 0);
                        int i3 = ThemeChooserDialog$FontSizeButtonListener$WhenMappings.$EnumSwitchMapping$0[fontSizeAction.ordinal()];
                        if (i3 == 1) {
                            i2 = textSizeMultiplier + 1;
                        } else if (i3 == 2) {
                            i2 = textSizeMultiplier - 1;
                        } else if (i3 != 3) {
                            ContextsKt$$ExternalSyntheticBUOutline0.m();
                            return;
                        }
                        PrefsIoUtil.setInt(R.string.preference_key_editing_text_size_multiplier, RegexKt.coerceIn(i2, wikipediaApp2.getResources().getInteger(R.integer.minTextSizeMultiplier), wikipediaApp2.getResources().getInteger(R.integer.maxTextSizeMultiplier)));
                        Callback callback = themeChooserDialog.callback();
                        if (callback != null) {
                            callback.onEditingPrefsChanged();
                        }
                        themeChooserDialog.updateFontSize$1();
                    } else {
                        Prefs prefs2 = Prefs.INSTANCE;
                        textSizeMultiplier = Prefs.getTextSizeMultiplier();
                        int i4 = ThemeChooserDialog$FontSizeButtonListener$WhenMappings.$EnumSwitchMapping$0[fontSizeAction.ordinal()];
                        if (i4 == 1) {
                            fontSizeMultiplier = wikipediaApp2.setFontSizeMultiplier(Prefs.getTextSizeMultiplier() + 1);
                        } else if (i4 == 2) {
                            fontSizeMultiplier = wikipediaApp2.setFontSizeMultiplier(Prefs.getTextSizeMultiplier() - 1);
                        } else {
                            if (i4 != 3) {
                                ContextsKt$$ExternalSyntheticBUOutline0.m();
                                return;
                            }
                            fontSizeMultiplier = wikipediaApp2.setFontSizeMultiplier(0);
                        }
                        if (fontSizeMultiplier) {
                            themeChooserDialog.updatingFont = true;
                            themeChooserDialog.updateFontSize$1();
                        }
                    }
                    ConnectionPool connectionPool2 = themeChooserDialog.appearanceSettingInteractionEvent;
                    if (connectionPool2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("appearanceSettingInteractionEvent");
                        throw null;
                    }
                    connectionPool2.submitEvent("fontSizeChange", String.valueOf(textSizeMultiplier), String.valueOf(Prefs.getTextSizeMultiplier()));
                    return;
            }
        }

        public ThemeButtonListener(ThemeChooserDialog themeChooserDialog, FontSizeAction fontSizeAction) {
            fontSizeAction.getClass();
            this.this$0 = themeChooserDialog;
            this.theme = fontSizeAction;
        }
    }
}
