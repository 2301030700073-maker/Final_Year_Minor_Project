package org.wikipedia.descriptions;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.paging.HintHandler;
import com.google.android.material.chip.Chip;
import okio.ByteString;
import org.wikipedia.R;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.views.PlainPasteEditText;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DescriptionEditView$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DescriptionEditView f$0;

    public /* synthetic */ DescriptionEditView$$ExternalSyntheticLambda0(DescriptionEditView descriptionEditView, int i) {
        this.$r8$classId = i;
        this.f$0 = descriptionEditView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        DescriptionEditView descriptionEditView = this.f$0;
        switch (i) {
            case 0:
                ByteString.Companion companion = descriptionEditView.mlKitLanguageDetector;
                String.valueOf(descriptionEditView.binding.viewDescriptionEditText.getText());
                companion.getClass();
                break;
            case 1:
                int i2 = DescriptionEditView.$r8$clinit;
                if (descriptionEditView.isAttachedToWindow()) {
                    Context context = descriptionEditView.getContext();
                    context.getClass();
                    Window window = ((Activity) context).getWindow();
                    window.getClass();
                    HintHandler hintHandler = new HintHandler(window.getDecorView());
                    int i3 = Build.VERSION.SDK_INT;
                    (i3 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i3 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i3 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
                    Context context2 = descriptionEditView.getContext();
                    context2.getClass();
                    Chip chip = descriptionEditView.binding.suggestedDescButton;
                    String string = descriptionEditView.getContext().getString(R.string.description_edit_suggested_description_button_tooltip);
                    string.getClass();
                    ShareUtil.showTooltip$default((Activity) context2, chip, string, false, true, 96).setOnBalloonDismissListener(new WikiGames$$ExternalSyntheticLambda0(4, descriptionEditView));
                    Prefs prefs = Prefs.INSTANCE;
                    PrefsIoUtil.setBoolean(R.string.preference_key_se_machine_generated_descriptions_tooltip_shown, true);
                    break;
                }
                break;
            case 2:
                int i4 = DescriptionEditView.$r8$clinit;
                if (descriptionEditView.isAttachedToWindow()) {
                    PlainPasteEditText plainPasteEditText = descriptionEditView.binding.viewDescriptionEditText;
                    Object systemService = plainPasteEditText.getContext().getSystemService("input_method");
                    systemService.getClass();
                    ((InputMethodManager) systemService).showSoftInput(plainPasteEditText, 1);
                    break;
                }
                break;
            case 3:
                int i5 = DescriptionEditView.$r8$clinit;
                descriptionEditView.validateText();
                break;
            default:
                int i6 = DescriptionEditView.$r8$clinit;
                if (descriptionEditView.isAttachedToWindow()) {
                    descriptionEditView.binding.viewDescriptionEditScrollview.fullScroll(130);
                    break;
                }
                break;
        }
    }
}
