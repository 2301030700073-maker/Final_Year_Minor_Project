package com.fsck.k9.ui.choosefolder;

import android.content.Intent;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.ui.Modifier;
import app.k9mail.legacy.message.controller.MessageReference;
import com.fsck.k9.sasl.OAuthBearer;
import com.fsck.k9.ui.choosefolder.ChooseFolderActivity;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ChooseFolderResultContract extends OAuthBearer {
    public final ChooseFolderActivity.Action action;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Result {
        public final String folderDisplayName;
        public final long folderId;
        public final String messageReference;

        public Result(long j, String str, String str2) {
            this.folderId = j;
            this.folderDisplayName = str;
            this.messageReference = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Result)) {
                return false;
            }
            Result result = (Result) obj;
            return this.folderId == result.folderId && this.folderDisplayName.equals(result.folderDisplayName) && Intrinsics.areEqual(this.messageReference, result.messageReference);
        }

        public final int hashCode() {
            long j = this.folderId;
            int m = Modifier.CC.m(((int) (j ^ (j >>> 32))) * 31, this.folderDisplayName, 31);
            String str = this.messageReference;
            return m + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return "Result(folderId=" + this.folderId + ", folderDisplayName=" + this.folderDisplayName + ", messageReference=" + this.messageReference + ")";
        }
    }

    public ChooseFolderResultContract(ChooseFolderActivity.Action action) {
        this.action = action;
    }

    @Override // com.fsck.k9.sasl.OAuthBearer
    public final Intent createIntent(AppCompatActivity appCompatActivity, Object obj) {
        Input input = (Input) obj;
        input.getClass();
        int i = ChooseFolderActivity.$r8$clinit;
        String str = input.accountUuid;
        Long l = input.currentFolderId;
        Long l2 = input.scrollToFolderId;
        MessageReference messageReference = input.messageReference;
        str.getClass();
        Intent intent = new Intent(appCompatActivity, (Class<?>) ChooseFolderActivity.class);
        intent.setAction(this.action.toString());
        intent.putExtra("accountUuid", str);
        if (l != null) {
            intent.putExtra("currentFolderId", l.longValue());
        }
        if (l2 != null) {
            intent.putExtra("scrollToFolderId", l2.longValue());
        }
        if (messageReference != null) {
            intent.putExtra("messageReference", messageReference.toIdentityString());
        }
        return intent;
    }

    @Override // com.fsck.k9.sasl.OAuthBearer
    public final Object parseResult(Intent intent, int i) {
        if (i != -1) {
            intent = null;
        }
        if (intent == null) {
            return null;
        }
        long longExtra = intent.getLongExtra("selectedFolderId", -1L);
        String stringExtra = intent.getStringExtra("folderDisplayName");
        stringExtra.getClass();
        return new Result(longExtra, stringExtra, intent.getStringExtra("messageReference"));
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Input {
        public final String accountUuid;
        public final Long currentFolderId;
        public final MessageReference messageReference;
        public final Long scrollToFolderId;

        public Input(String str, Long l, Long l2, MessageReference messageReference) {
            str.getClass();
            this.accountUuid = str;
            this.currentFolderId = l;
            this.scrollToFolderId = l2;
            this.messageReference = messageReference;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Input)) {
                return false;
            }
            Input input = (Input) obj;
            return Intrinsics.areEqual(this.accountUuid, input.accountUuid) && Intrinsics.areEqual(this.currentFolderId, input.currentFolderId) && Intrinsics.areEqual(this.scrollToFolderId, input.scrollToFolderId) && Intrinsics.areEqual(this.messageReference, input.messageReference);
        }

        public final int hashCode() {
            int hashCode = this.accountUuid.hashCode() * 31;
            Long l = this.currentFolderId;
            int hashCode2 = (hashCode + (l == null ? 0 : l.hashCode())) * 31;
            Long l2 = this.scrollToFolderId;
            int hashCode3 = (hashCode2 + (l2 == null ? 0 : l2.hashCode())) * 31;
            MessageReference messageReference = this.messageReference;
            return hashCode3 + (messageReference != null ? messageReference.hashCode() : 0);
        }

        public final String toString() {
            return "Input(accountUuid=" + this.accountUuid + ", currentFolderId=" + this.currentFolderId + ", scrollToFolderId=" + this.scrollToFolderId + ", messageReference=" + this.messageReference + ")";
        }

        public /* synthetic */ Input(int i, Long l, String str) {
            this(str, (i & 2) != 0 ? null : l, null, null);
        }
    }
}
