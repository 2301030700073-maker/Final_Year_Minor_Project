package org.wikipedia.edit.insertmedia;

import android.content.Intent;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.compose.ui.node.NodeChain;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okio.Okio__JvmOkioKt;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.views.PlainPasteEditText;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class InsertMediaSettingsFragment$$ExternalSyntheticLambda0 implements ActivityResultCallback, LinkMovementMethodExt.UrlHandler {
    public final /* synthetic */ InsertMediaSettingsFragment f$0;

    public /* synthetic */ InsertMediaSettingsFragment$$ExternalSyntheticLambda0(InsertMediaSettingsFragment insertMediaSettingsFragment) {
        this.f$0 = insertMediaSettingsFragment;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        ActivityResult activityResult = (ActivityResult) obj;
        activityResult.getClass();
        Intent intent = activityResult.data;
        ArrayList<String> stringArrayListExtra = intent != null ? intent.getStringArrayListExtra("android.speech.extra.RESULTS") : null;
        if (activityResult.resultCode != -1 || stringArrayListExtra == null) {
            return;
        }
        String str = (String) CollectionsKt.first((List) stringArrayListExtra);
        InsertMediaSettingsFragment insertMediaSettingsFragment = this.f$0;
        TextInputLayout textInputLayout = insertMediaSettingsFragment.currentVoiceInputParentLayout;
        NodeChain nodeChain = insertMediaSettingsFragment._binding;
        nodeChain.getClass();
        if (Intrinsics.areEqual(textInputLayout, (TextInputLayout) nodeChain.current)) {
            NodeChain nodeChain2 = insertMediaSettingsFragment._binding;
            nodeChain2.getClass();
            ((PlainPasteEditText) nodeChain2.buffer).setText(str);
            return;
        }
        TextInputLayout textInputLayout2 = insertMediaSettingsFragment.currentVoiceInputParentLayout;
        NodeChain nodeChain3 = insertMediaSettingsFragment._binding;
        nodeChain3.getClass();
        if (Intrinsics.areEqual(textInputLayout2, (TextInputLayout) nodeChain3.head)) {
            NodeChain nodeChain4 = insertMediaSettingsFragment._binding;
            nodeChain4.getClass();
            ((PlainPasteEditText) nodeChain4.tail).setText(str);
        }
    }

    @Override // org.wikipedia.page.LinkMovementMethodExt.UrlHandler
    public void onUrlClick(String str) {
        InsertMediaSettingsFragment insertMediaSettingsFragment = this.f$0;
        insertMediaSettingsFragment.sendInsertMediaEvent("view_help");
        Okio__JvmOkioKt.openInCustomTab(insertMediaSettingsFragment.requireActivity(), str);
    }
}
