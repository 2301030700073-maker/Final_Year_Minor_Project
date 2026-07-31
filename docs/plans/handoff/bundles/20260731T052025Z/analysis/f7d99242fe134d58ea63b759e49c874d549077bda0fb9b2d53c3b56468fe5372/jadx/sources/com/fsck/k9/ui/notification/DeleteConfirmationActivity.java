package com.fsck.k9.ui.notification;

import android.content.Intent;
import android.os.Bundle;
import androidx.work.Data;
import app.k9mail.legacy.message.controller.MessageReference;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.Preferences;
import com.fsck.k9.R;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.fragment.ConfirmationDialogFragment;
import com.fsck.k9.notification.NotificationActionService;
import com.fsck.k9.ui.base.BaseActivity;
import com.fsck.k9.ui.base.ThemeType;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicFU;
import net.thunderbird.core.android.account.LegacyAccountDto;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DeleteConfirmationActivity extends BaseActivity implements ConfirmationDialogFragment.ConfirmationDialogFragmentListener {
    public static final /* synthetic */ int $r8$clinit = 0;
    public LegacyAccountDto account;
    public ArrayList messagesToDelete;
    public final Lazy messagingController$delegate;
    public final Lazy preferences$delegate;

    public DeleteConfirmationActivity() {
        super(ThemeType.DIALOG);
        final int i = 0;
        Function0 function0 = new Function0(this) { // from class: com.fsck.k9.ui.notification.DeleteConfirmationActivity$special$$inlined$inject$default$1
            public final /* synthetic */ DeleteConfirmationActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                DeleteConfirmationActivity deleteConfirmationActivity = this.$this_inject;
                switch (i2) {
                    case 0:
                        return AtomicFU.getKoinScope(deleteConfirmationActivity).resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(deleteConfirmationActivity).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                }
            }
        };
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.preferences$delegate = ResultKt.lazy(lazyThreadSafetyMode, function0);
        final int i2 = 1;
        this.messagingController$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.ui.notification.DeleteConfirmationActivity$special$$inlined$inject$default$1
            public final /* synthetic */ DeleteConfirmationActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                DeleteConfirmationActivity deleteConfirmationActivity = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(deleteConfirmationActivity).resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(deleteConfirmationActivity).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
                }
            }
        });
    }

    @Override // com.fsck.k9.fragment.ConfirmationDialogFragment.ConfirmationDialogFragmentListener
    public final void doPositiveClick(int i) {
        ArrayList arrayList = this.messagesToDelete;
        if (arrayList == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messagesToDelete");
            throw null;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            MessageReference messageReference = (MessageReference) it.next();
            MessagingController messagingController = (MessagingController) this.messagingController$delegate.getValue();
            LegacyAccountDto legacyAccountDto = this.account;
            if (legacyAccountDto == null) {
                Intrinsics.throwUninitializedPropertyAccessException("account");
                throw null;
            }
            messagingController.notificationController.removeNewMailNotification(legacyAccountDto, messageReference);
        }
        LegacyAccountDto legacyAccountDto2 = this.account;
        if (legacyAccountDto2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        String str = legacyAccountDto2.uuid;
        ArrayList arrayList2 = this.messagesToDelete;
        if (arrayList2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messagesToDelete");
            throw null;
        }
        str.getClass();
        Intent intent = new Intent(this, (Class<?>) NotificationActionService.class);
        intent.setAction("ACTION_DELETE");
        intent.putExtra("accountUuid", str);
        intent.putExtra("messageReferences", Data.Companion.toMessageReferenceStringList(arrayList2));
        startService(intent);
        finish();
    }

    @Override // com.fsck.k9.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("accountUuid");
        ArrayList messageReferenceList = Data.Companion.toMessageReferenceList(getIntent().getStringArrayListExtra("messageReferences"));
        if (stringExtra == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("accountUuid can't be null");
            return;
        }
        if (messageReferenceList.isEmpty()) {
            UriKt$$ExternalSyntheticBUOutline0.m("messageReferences can't be empty");
            return;
        }
        LegacyAccountDto account = ((Preferences) this.preferences$delegate.getValue()).getAccount(stringExtra);
        if (account == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("accountUuid couldn't be resolved to an account");
            return;
        }
        this.account = account;
        this.messagesToDelete = messageReferenceList;
        if (bundle == null) {
            int size = messageReferenceList.size();
            String quantityString = getResources().getQuantityString(R.plurals.dialog_confirm_delete_messages, size, Integer.valueOf(size));
            quantityString.getClass();
            ConfirmationDialogFragment.newInstance(1, getString(R.string.dialog_confirm_delete_title), quantityString, getString(R.string.dialog_confirm_delete_confirm_button), getString(R.string.dialog_confirm_delete_cancel_button)).show(getSupportFragmentManager(), "dialog");
        }
    }
}
