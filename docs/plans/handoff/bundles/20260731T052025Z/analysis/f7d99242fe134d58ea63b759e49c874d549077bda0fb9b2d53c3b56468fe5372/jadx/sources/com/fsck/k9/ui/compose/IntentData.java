package com.fsck.k9.ui.compose;

import android.net.Uri;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IntentData {
    public final List extraStream;
    public final CharSequence extraText;
    public final String intentType;
    public final Uri mailToUri;
    public final boolean shouldInitFromSendOrViewIntent;
    public final boolean startedByExternalIntent;
    public final String subject;
    public final String trustId;

    public IntentData(boolean z, boolean z2, Uri uri, CharSequence charSequence, String str, List list, String str2, String str3) {
        list.getClass();
        this.startedByExternalIntent = z;
        this.shouldInitFromSendOrViewIntent = z2;
        this.mailToUri = uri;
        this.extraText = charSequence;
        this.intentType = str;
        this.extraStream = list;
        this.subject = str2;
        this.trustId = str3;
    }

    public static IntentData copy$default(IntentData intentData, Uri uri, CharSequence charSequence, String str, List list, String str2, String str3, int i) {
        boolean z = (i & 1) != 0 ? intentData.startedByExternalIntent : true;
        boolean z2 = (i & 2) != 0 ? intentData.shouldInitFromSendOrViewIntent : true;
        if ((i & 4) != 0) {
            uri = intentData.mailToUri;
        }
        Uri uri2 = uri;
        if ((i & 8) != 0) {
            charSequence = intentData.extraText;
        }
        CharSequence charSequence2 = charSequence;
        String str4 = (i & 16) != 0 ? intentData.intentType : str;
        List list2 = (i & 32) != 0 ? intentData.extraStream : list;
        String str5 = (i & 64) != 0 ? intentData.subject : str2;
        String str6 = (i & 128) != 0 ? intentData.trustId : str3;
        list2.getClass();
        return new IntentData(z, z2, uri2, charSequence2, str4, list2, str5, str6);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IntentData)) {
            return false;
        }
        IntentData intentData = (IntentData) obj;
        return this.startedByExternalIntent == intentData.startedByExternalIntent && this.shouldInitFromSendOrViewIntent == intentData.shouldInitFromSendOrViewIntent && Intrinsics.areEqual(this.mailToUri, intentData.mailToUri) && Intrinsics.areEqual(this.extraText, intentData.extraText) && Intrinsics.areEqual(this.intentType, intentData.intentType) && Intrinsics.areEqual(this.extraStream, intentData.extraStream) && Intrinsics.areEqual(this.subject, intentData.subject) && Intrinsics.areEqual(this.trustId, intentData.trustId);
    }

    public final int hashCode() {
        int i = (((this.startedByExternalIntent ? 1231 : 1237) * 31) + (this.shouldInitFromSendOrViewIntent ? 1231 : 1237)) * 31;
        Uri uri = this.mailToUri;
        int hashCode = (i + (uri == null ? 0 : uri.hashCode())) * 31;
        CharSequence charSequence = this.extraText;
        int hashCode2 = (hashCode + (charSequence == null ? 0 : charSequence.hashCode())) * 31;
        String str = this.intentType;
        int m = CameraDevices$CC.m(this.extraStream, (hashCode2 + (str == null ? 0 : str.hashCode())) * 31, 31);
        String str2 = this.subject;
        int hashCode3 = (m + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.trustId;
        return hashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        return "IntentData(startedByExternalIntent=" + this.startedByExternalIntent + ", shouldInitFromSendOrViewIntent=" + this.shouldInitFromSendOrViewIntent + ", mailToUri=" + this.mailToUri + ", extraText=" + ((Object) this.extraText) + ", intentType=" + this.intentType + ", extraStream=" + this.extraStream + ", subject=" + this.subject + ", trustId=" + this.trustId + ")";
    }
}
