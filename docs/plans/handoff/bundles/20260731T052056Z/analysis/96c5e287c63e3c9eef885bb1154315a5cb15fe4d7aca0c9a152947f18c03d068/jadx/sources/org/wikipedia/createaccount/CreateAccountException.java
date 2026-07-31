package org.wikipedia.createaccount;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CreateAccountException extends RuntimeException {
    public final String messageCode;

    public CreateAccountException(String str, String str2) {
        super(str);
        this.messageCode = str2;
    }
}
