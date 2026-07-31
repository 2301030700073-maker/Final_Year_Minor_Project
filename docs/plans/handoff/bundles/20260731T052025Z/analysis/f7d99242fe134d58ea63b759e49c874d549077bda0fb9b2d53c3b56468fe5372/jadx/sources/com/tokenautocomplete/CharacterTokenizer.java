package com.tokenautocomplete;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.openintents.openpgp.OpenPgpError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CharacterTokenizer implements Tokenizer {
    public static final Parcelable.Creator<CharacterTokenizer> CREATOR = new OpenPgpError.AnonymousClass1(7);
    public final ArrayList splitChar;
    public final String tokenTerminator;

    public CharacterTokenizer(List list, String str) {
        this.splitChar = new ArrayList(list);
        this.tokenTerminator = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final CharSequence wrapTokenValue(String str) {
        String str2 = ((Object) str) + this.tokenTerminator;
        if (!(str instanceof Spanned)) {
            return str2;
        }
        SpannableString spannableString = new SpannableString(str2);
        TextUtils.copySpansFrom((Spanned) str, 0, str.length(), Object.class, spannableString, 0);
        return spannableString;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.splitChar);
        parcel.writeString(this.tokenTerminator);
    }
}
