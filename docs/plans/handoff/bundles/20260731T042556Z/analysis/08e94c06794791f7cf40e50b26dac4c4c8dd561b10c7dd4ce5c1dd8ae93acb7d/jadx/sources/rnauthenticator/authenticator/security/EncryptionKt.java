package rnauthenticator.authenticator.security;

import android.util.Base64;
import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Encryption.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u001a\u001d\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0000¢\u0006\u0002\u0010\u0005\u001a\f\u0010\u0006\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\f\u0010\u0007\u001a\u00020\u0002*\u00020\u0002H\u0000¨\u0006\b"}, d2 = {"toBase64", "", "", "flags", "", "([BLjava/lang/Integer;)Ljava/lang/String;", "toHex", "toSHA256", "propertyguru_react-native-authenticator_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class EncryptionKt {
    public static /* synthetic */ String toBase64$default(byte[] bArr, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            num = null;
        }
        return toBase64(bArr, num);
    }

    public static final String toBase64(byte[] bArr, Integer num) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        String encodeToString = Base64.encodeToString(bArr, num != null ? num.intValue() : 11);
        Intrinsics.checkNotNullExpressionValue(encodeToString, "encodeToString(...)");
        return encodeToString;
    }

    public static final String toHex(byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        return ArraysKt.joinToString$default(bArr, (CharSequence) "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, new Function1() { // from class: rnauthenticator.authenticator.security.EncryptionKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                CharSequence hex$lambda$0;
                hex$lambda$0 = EncryptionKt.toHex$lambda$0(((Byte) obj).byteValue());
                return hex$lambda$0;
            }
        }, 30, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence toHex$lambda$0(byte b) {
        String format = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    public static final byte[] toSHA256(byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        messageDigest.update(bArr, 0, bArr.length);
        byte[] digest = messageDigest.digest();
        Intrinsics.checkNotNullExpressionValue(digest, "digest(...)");
        return digest;
    }
}
