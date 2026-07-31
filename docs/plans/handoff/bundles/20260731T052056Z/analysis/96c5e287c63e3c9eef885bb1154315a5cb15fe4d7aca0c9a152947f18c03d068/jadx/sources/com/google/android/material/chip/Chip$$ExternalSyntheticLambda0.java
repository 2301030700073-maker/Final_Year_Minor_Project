package com.google.android.material.chip;

import android.graphics.Rect;
import android.widget.CompoundButton;
import coil3.memory.MemoryCacheService;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.internal.CheckableGroup;
import com.google.android.material.internal.MaterialCheckable;
import com.google.android.material.textfield.TextInputLayout;
import okio.internal.DefaultSocket;
import org.wikipedia.Constants;
import org.wikipedia.analytics.eventplatform.ImageRecommendationsEvent;
import org.wikipedia.edit.EditSectionActivity;
import org.wikipedia.edit.insertmedia.InsertMediaActivity;
import org.wikipedia.edit.insertmedia.InsertMediaAdvancedSettingsFragment;
import org.wikipedia.edit.insertmedia.InsertMediaImageSizeDialog;
import org.wikipedia.edit.summaries.EditSummaryFragment;
import org.wikipedia.settings.languages.WikipediaLanguagesFragment;
import org.wikipedia.settings.languages.WikipediaLanguagesItemView;
import org.wikipedia.suggestededits.SuggestedEditsImageRecsDialog;
import org.wikipedia.views.PlainPasteEditText;
import org.wikipedia.views.TextInputDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Chip$$ExternalSyntheticLambda0 implements CompoundButton.OnCheckedChangeListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ Chip$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        DefaultSocket defaultSocket;
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                Chip chip = (Chip) obj;
                Rect rect = Chip.EMPTY_BOUNDS;
                MaterialCheckable.OnCheckedChangeListener onCheckedChangeListener = chip.onCheckedChangeListenerInternal;
                if (onCheckedChangeListener != null) {
                    CheckableGroup checkableGroup = (CheckableGroup) ((MemoryCacheService) onCheckedChangeListener).imageLoader;
                    if (!z ? checkableGroup.uncheckInternal(chip, checkableGroup.selectionRequired) : checkableGroup.checkInternal(chip)) {
                        checkableGroup.onCheckedStateChanged();
                    }
                }
                CompoundButton.OnCheckedChangeListener onCheckedChangeListener2 = chip.onCheckedChangeListener;
                if (onCheckedChangeListener2 != null) {
                    onCheckedChangeListener2.onCheckedChanged(compoundButton, z);
                    break;
                }
                break;
            case 1:
                InsertMediaAdvancedSettingsFragment insertMediaAdvancedSettingsFragment = (InsertMediaAdvancedSettingsFragment) obj;
                compoundButton.getClass();
                insertMediaAdvancedSettingsFragment.getViewModel$4().imagePosition = z ? "img_right" : "img_none";
                insertMediaAdvancedSettingsFragment.onUpdateImagePosition();
                break;
            case 2:
                InsertMediaImageSizeDialog insertMediaImageSizeDialog = (InsertMediaImageSizeDialog) obj;
                compoundButton.getClass();
                SVGAndroidRenderer sVGAndroidRenderer = insertMediaImageSizeDialog._binding;
                sVGAndroidRenderer.getClass();
                ((TextInputLayout) sVGAndroidRenderer.document).setEnabled(z);
                SVGAndroidRenderer sVGAndroidRenderer2 = insertMediaImageSizeDialog._binding;
                sVGAndroidRenderer2.getClass();
                ((TextInputLayout) sVGAndroidRenderer2.parentStack).setEnabled(z);
                if (!z) {
                    ((InsertMediaActivity) insertMediaImageSizeDialog.requireActivity()).getViewModel().imageSize = "220x124";
                    insertMediaImageSizeDialog.setCustomSizeFields();
                    break;
                }
                break;
            case 3:
                EditSummaryFragment editSummaryFragment = (EditSummaryFragment) obj;
                compoundButton.getClass();
                if (((EditSectionActivity) editSummaryFragment.requireActivity()).getViewModel().invokeSource == Constants.InvokeSource.EDIT_ADD_IMAGE) {
                    ImageRecommendationsEvent.Companion.logAction$default(ImageRecommendationsEvent.Companion, z ? "add_watchlist" : "remove_watchlist", "editsummary_dialog", editSummaryFragment.getActionDataStringForData(), 8);
                    break;
                }
                break;
            case 4:
                WikipediaLanguagesItemView wikipediaLanguagesItemView = (WikipediaLanguagesItemView) obj;
                compoundButton.getClass();
                WikipediaLanguagesItemView.Callback callback = wikipediaLanguagesItemView.callback;
                if (callback != null) {
                    WikipediaLanguagesFragment wikipediaLanguagesFragment = (WikipediaLanguagesFragment) callback;
                    wikipediaLanguagesFragment.toggleSelectedLanguage((String) wikipediaLanguagesFragment.wikipediaLanguages.get(wikipediaLanguagesItemView.position));
                }
                wikipediaLanguagesItemView.updateBackgroundColor();
                break;
            case 5:
                compoundButton.getClass();
                ((SuggestedEditsImageRecsDialog) obj).updateSubmitState();
                break;
            default:
                TextInputDialog textInputDialog = (TextInputDialog) obj;
                compoundButton.getClass();
                if (z && (defaultSocket = (DefaultSocket) textInputDialog.callback) != null) {
                    defaultSocket.onTextChanged(String.valueOf(((PlainPasteEditText) ((DefaultSocket) textInputDialog.binding).source).getText()), textInputDialog);
                    break;
                }
                break;
        }
    }
}
