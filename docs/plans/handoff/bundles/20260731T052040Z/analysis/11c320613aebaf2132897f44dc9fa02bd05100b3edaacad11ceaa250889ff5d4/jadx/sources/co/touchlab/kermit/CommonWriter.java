package co.touchlab.kermit;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CommonWriter extends LogWriter {
    @Override // co.touchlab.kermit.LogWriter
    public final void log(Severity severity, String str, Throwable th) {
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(severity);
        sb2.append(':');
        sb.append(sb2.toString());
        sb.append(" ");
        sb.append(str);
        System.out.println((Object) sb.toString());
        if (th != null) {
            th.printStackTrace();
        }
    }
}
