package org.wikipedia.edit;

import android.content.Intent;
import android.net.Uri;
import android.os.Parcelable;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.compose.ui.unit.DpKt;
import java.util.Map;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.jvm.internal.Intrinsics;
import okio.Okio__JvmOkioKt;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.edit.insertmedia.InsertMediaViewModel;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class EditSectionActivity$$ExternalSyntheticLambda7 implements ActivityResultCallback, LinkMovementMethodExt.UrlHandler {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ EditSectionActivity f$0;

    public /* synthetic */ EditSectionActivity$$ExternalSyntheticLambda7(EditSectionActivity editSectionActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = editSectionActivity;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        int selectionStart;
        int i = this.$r8$classId;
        EditSectionActivity editSectionActivity = this.f$0;
        switch (i) {
            case 0:
                ActivityResult activityResult = (ActivityResult) obj;
                int i2 = EditSectionActivity.$r8$clinit;
                activityResult.getClass();
                if (activityResult.resultCode == 1) {
                    editSectionActivity.updateEditLicenseText();
                    editSectionActivity.invalidateOptionsMenu();
                    ShareUtil.showMessage(editSectionActivity, R.string.login_success_toast);
                    return;
                }
                return;
            default:
                ActivityResult activityResult2 = (ActivityResult) obj;
                int i3 = EditSectionActivity.$r8$clinit;
                activityResult2.getClass();
                if (activityResult2.resultCode != 100) {
                    if (editSectionActivity.getViewModel().invokeSource == Constants.InvokeSource.EDIT_ADD_IMAGE) {
                        editSectionActivity.finish();
                        return;
                    }
                    return;
                }
                Intent intent = activityResult2.data;
                if (intent != null) {
                    PageTitle pageTitle = (PageTitle) ((Parcelable) DpKt.getParcelableExtra(intent, "imageTitle", PageTitle.class));
                    String stringExtra = intent.getStringExtra("resultImageCaption");
                    String stringExtra2 = intent.getStringExtra("resultImageAlt");
                    String stringExtra3 = intent.getStringExtra("resultImageSize");
                    String stringExtra4 = intent.getStringExtra("resultImageType");
                    String stringExtra5 = intent.getStringExtra("resultImagePos");
                    editSectionActivity.getIntent().putExtra("imageTitle", pageTitle);
                    editSectionActivity.getIntent().putExtra("resultImageCaption", stringExtra);
                    editSectionActivity.getIntent().putExtra("resultImageAlt", stringExtra2);
                    editSectionActivity.getIntent().putExtra("resultImageSize", stringExtra3);
                    editSectionActivity.getIntent().putExtra("resultImageType", stringExtra4);
                    editSectionActivity.getIntent().putExtra("resultImagePos", stringExtra5);
                    Map map = InsertMediaViewModel.infoboxVarsByLang;
                    String str = editSectionActivity.getViewModel().pageTitle.wikiSite.languageCode;
                    String str2 = editSectionActivity.getViewModel().sectionWikitext;
                    String str3 = str2 == null ? "" : str2;
                    String text = pageTitle != null ? pageTitle.getText() : null;
                    String str4 = text == null ? "" : text;
                    String str5 = stringExtra == null ? "" : stringExtra;
                    String str6 = stringExtra2 == null ? "" : stringExtra2;
                    String str7 = stringExtra3 == null ? "" : stringExtra3;
                    String str8 = stringExtra4 == null ? "" : stringExtra4;
                    String str9 = stringExtra5 == null ? "" : stringExtra5;
                    Constants.InvokeSource invokeSource = editSectionActivity.getViewModel().invokeSource;
                    Constants.InvokeSource invokeSource2 = Constants.InvokeSource.EDIT_ADD_IMAGE;
                    if (invokeSource == invokeSource2) {
                        selectionStart = 0;
                    } else {
                        ActivityLoginBinding activityLoginBinding = editSectionActivity.binding;
                        if (activityLoginBinding == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        selectionStart = ((SyntaxHighlightableEditText) activityLoginBinding.loginPrimaryContainer).getSelectionStart();
                    }
                    Triple insertImageIntoWikiText = Okio__JvmOkioKt.insertImageIntoWikiText(str, str3, str4, str5, str6, str7, str8, str9, selectionStart, editSectionActivity.getViewModel().invokeSource == invokeSource2, editSectionActivity.getIntent().getBooleanExtra("attemptInsertIntoInfobox", false));
                    ActivityLoginBinding activityLoginBinding2 = editSectionActivity.binding;
                    if (activityLoginBinding2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    ((SyntaxHighlightableEditText) activityLoginBinding2.loginPrimaryContainer).setText((CharSequence) insertImageIntoWikiText.first);
                    editSectionActivity.getIntent().putExtra("insertedIntoInfobox", ((Boolean) insertImageIntoWikiText.second).booleanValue());
                    Pair pair = (Pair) insertImageIntoWikiText.third;
                    ActivityLoginBinding activityLoginBinding3 = editSectionActivity.binding;
                    if (activityLoginBinding3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    ((SyntaxHighlightableEditText) activityLoginBinding3.loginPrimaryContainer).setSelection(((Number) pair.first).intValue(), ((Number) pair.second).intValue() + ((Number) pair.first).intValue());
                    if (editSectionActivity.getViewModel().invokeSource == invokeSource2) {
                        editSectionActivity.clickNextButton();
                        return;
                    }
                    return;
                }
                return;
        }
    }

    @Override // org.wikipedia.page.LinkMovementMethodExt.UrlHandler
    public void onUrlClick(String str) {
        int i = EditSectionActivity.$r8$clinit;
        EditSectionActivity editSectionActivity = this.f$0;
        Uri parse = Uri.parse(UriUtil.resolveProtocolRelativeUrl(str, editSectionActivity.getViewModel().pageTitle.wikiSite));
        parse.getClass();
        UriUtil.visitInExternalBrowser(editSectionActivity, parse);
    }
}
