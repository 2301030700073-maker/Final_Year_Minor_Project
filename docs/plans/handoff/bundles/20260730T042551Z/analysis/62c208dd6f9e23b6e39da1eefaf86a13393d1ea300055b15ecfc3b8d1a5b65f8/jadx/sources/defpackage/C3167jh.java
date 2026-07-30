package defpackage;

/* renamed from: jh, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3167jh extends C3344mh {

    /* renamed from: break, reason: not valid java name */
    public final String f13745break;

    /* renamed from: new, reason: not valid java name */
    public final int f13746new;

    public C3167jh(String str, int i, String str2) {
        super(str);
        this.f13746new = i;
        this.f13745break = str2;
    }

    @Override // defpackage.C3344mh, java.lang.Throwable
    public final String toString() {
        String str = "{FacebookDialogException: errorCode: " + this.f13746new + ", message: " + getMessage() + ", url: " + this.f13745break + "}";
        C0173Do.m399new(str, "StringBuilder()\n        .append(\"{FacebookDialogException: \")\n        .append(\"errorCode: \")\n        .append(errorCode)\n        .append(\", message: \")\n        .append(message)\n        .append(\", url: \")\n        .append(failingUrl)\n        .append(\"}\")\n        .toString()");
        return str;
    }
}
