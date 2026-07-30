package defpackage;

import defpackage.YL;
import org.chromium.support_lib_boundary.WebMessageListenerBoundaryInterface;

/* loaded from: classes.dex */
public final class UL implements WebMessageListenerBoundaryInterface {

    /* renamed from: do, reason: not valid java name */
    public final YL.Cdo f3863do;

    public UL(YL.Cdo cdo) {
        this.f3863do = cdo;
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    public final String[] getSupportedFeatures() {
        return new String[]{"WEB_MESSAGE_LISTENER", "WEB_MESSAGE_ARRAY_BUFFER"};
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    @Override // org.chromium.support_lib_boundary.WebMessageListenerBoundaryInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onPostMessage(android.webkit.WebView r7, java.lang.reflect.InvocationHandler r8, android.net.Uri r9, boolean r10, java.lang.reflect.InvocationHandler r11) {
        /*
            r6 = this;
            java.lang.Class<org.chromium.support_lib_boundary.WebMessageBoundaryInterface> r0 = org.chromium.support_lib_boundary.WebMessageBoundaryInterface.class
            java.lang.Object r8 = defpackage.P5.m1747do(r0, r8)
            org.chromium.support_lib_boundary.WebMessageBoundaryInterface r8 = (org.chromium.support_lib_boundary.WebMessageBoundaryInterface) r8
            java.lang.reflect.InvocationHandler[] r0 = r8.getPorts()
            int r1 = r0.length
            j6[] r1 = new defpackage.AbstractC3134j6[r1]
            r2 = 0
        L10:
            int r3 = r0.length
            if (r2 >= r3) goto L1f
            VL r3 = new VL
            r4 = r0[r2]
            r3.<init>(r4)
            r1[r2] = r3
            int r2 = r2 + 1
            goto L10
        L1f:
            m1$new r0 = defpackage.ZL.f4805do
            boolean r0 = r0.mo2991new()
            if (r0 == 0) goto L52
            java.lang.Class<org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface> r0 = org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface.class
            java.lang.reflect.InvocationHandler r8 = r8.getMessagePayload()
            java.lang.Object r8 = defpackage.P5.m1747do(r0, r8)
            org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface r8 = (org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface) r8
            int r0 = r8.getType()
            if (r0 == 0) goto L48
            r1 = 1
            if (r0 == r1) goto L3e
            r8 = 0
            goto L5c
        L3e:
            TL r0 = new TL
            byte[] r8 = r8.getAsArrayBuffer()
            r0.<init>(r8)
            goto L5b
        L48:
            TL r0 = new TL
            java.lang.String r8 = r8.getAsString()
            r0.<init>(r8)
            goto L5b
        L52:
            TL r0 = new TL
            java.lang.String r8 = r8.getData()
            r0.<init>(r8)
        L5b:
            r8 = r0
        L5c:
            r2 = r8
            if (r2 == 0) goto L7b
            java.lang.Class<org.chromium.support_lib_boundary.JsReplyProxyBoundaryInterface> r8 = org.chromium.support_lib_boundary.JsReplyProxyBoundaryInterface.class
            java.lang.Object r8 = defpackage.P5.m1747do(r8, r11)
            org.chromium.support_lib_boundary.JsReplyProxyBoundaryInterface r8 = (org.chromium.support_lib_boundary.JsReplyProxyBoundaryInterface) r8
            So r11 = new So
            r11.<init>(r8)
            java.lang.Object r8 = r8.getOrCreatePeer(r11)
            r5 = r8
            To r5 = (defpackage.C0524To) r5
            YL$do r0 = r6.f3863do
            r1 = r7
            r3 = r9
            r4 = r10
            r0.onPostMessage(r1, r2, r3, r4, r5)
        L7b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.UL.onPostMessage(android.webkit.WebView, java.lang.reflect.InvocationHandler, android.net.Uri, boolean, java.lang.reflect.InvocationHandler):void");
    }
}
