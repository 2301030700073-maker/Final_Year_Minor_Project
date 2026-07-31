package org.wikipedia.settings.dev;

import android.R;
import android.content.DialogInterface;
import androidx.appcompat.app.AlertController;
import androidx.preference.PreferenceFragmentCompat;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DeveloperSettingsPreferenceLoader this$0;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1(org.wikipedia.settings.dev.DeveloperSettingsPreferenceLoader r1, int r2) {
        /*
            r0 = this;
            r0.$r8$classId = r2
            switch(r2) {
                case 1: goto L25;
                case 2: goto L1d;
                case 3: goto L15;
                case 4: goto Ld;
                default: goto L5;
            }
        L5:
            kotlinx.coroutines.Job$Key r2 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r0.this$0 = r1
            r0.<init>(r2)
            return
        Ld:
            kotlinx.coroutines.Job$Key r2 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r0.this$0 = r1
            r0.<init>(r2)
            return
        L15:
            kotlinx.coroutines.Job$Key r2 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r0.this$0 = r1
            r0.<init>(r2)
            return
        L1d:
            kotlinx.coroutines.Job$Key r2 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r0.this$0 = r1
            r0.<init>(r2)
            return
        L25:
            kotlinx.coroutines.Job$Key r2 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r0.this$0 = r1
            r0.<init>(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.settings.dev.DeveloperSettingsPreferenceLoader$createTestReadingList$$inlined$CoroutineExceptionHandler$1.<init>(org.wikipedia.settings.dev.DeveloperSettingsPreferenceLoader, int):void");
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void handleException(Throwable th, CoroutineContext coroutineContext) {
        int i = this.$r8$classId;
        DeveloperSettingsPreferenceLoader developerSettingsPreferenceLoader = this.this$0;
        switch (i) {
            case 0:
                MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(((PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment).requireActivity(), 0);
                ((AlertController.AlertParams) materialAlertDialogBuilder.array).mMessage = th.getMessage();
                materialAlertDialogBuilder.setPositiveButton(R.string.ok, (DialogInterface.OnClickListener) null);
                materialAlertDialogBuilder.show();
                break;
            case 1:
                MaterialAlertDialogBuilder materialAlertDialogBuilder2 = new MaterialAlertDialogBuilder(((PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment).requireActivity(), 0);
                ((AlertController.AlertParams) materialAlertDialogBuilder2.array).mMessage = th.getMessage();
                materialAlertDialogBuilder2.setPositiveButton(R.string.ok, (DialogInterface.OnClickListener) null);
                materialAlertDialogBuilder2.show();
                break;
            case 2:
                MaterialAlertDialogBuilder materialAlertDialogBuilder3 = new MaterialAlertDialogBuilder(((PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment).requireActivity(), 0);
                ((AlertController.AlertParams) materialAlertDialogBuilder3.array).mMessage = th.getMessage();
                materialAlertDialogBuilder3.setPositiveButton(R.string.ok, (DialogInterface.OnClickListener) null);
                materialAlertDialogBuilder3.show();
                break;
            case 3:
                MaterialAlertDialogBuilder materialAlertDialogBuilder4 = new MaterialAlertDialogBuilder(((PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment).requireActivity(), 0);
                ((AlertController.AlertParams) materialAlertDialogBuilder4.array).mMessage = th.getMessage();
                materialAlertDialogBuilder4.setPositiveButton(R.string.ok, (DialogInterface.OnClickListener) null);
                materialAlertDialogBuilder4.show();
                break;
            default:
                MaterialAlertDialogBuilder materialAlertDialogBuilder5 = new MaterialAlertDialogBuilder(((PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment).requireActivity(), 0);
                ((AlertController.AlertParams) materialAlertDialogBuilder5.array).mMessage = th.getMessage();
                materialAlertDialogBuilder5.setPositiveButton(R.string.ok, (DialogInterface.OnClickListener) null);
                materialAlertDialogBuilder5.show();
                break;
        }
    }
}
