package androidx.navigation;

import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class NavController$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ NavHostController f$0;

    public /* synthetic */ NavController$$ExternalSyntheticLambda0(NavHostController navHostController, int i) {
        this.$r8$classId = i;
        this.f$0 = navHostController;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0024, code lost:
    
        if (r2.getDestinationCountOnBackStack() > 1) goto L12;
     */
    @Override // kotlin.jvm.functions.Function0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke() {
        /*
            r2 = this;
            int r0 = r2.$r8$classId
            androidx.navigation.NavHostController r2 = r2.f$0
            switch(r0) {
                case 0: goto L19;
                default: goto L7;
            }
        L7:
            androidx.navigation.NavInflater r0 = new androidx.navigation.NavInflater
            android.content.Context r1 = r2.context
            androidx.navigation.internal.NavControllerImpl r2 = r2.impl
            androidx.navigation.NavigatorProvider r2 = r2._navigatorProvider
            r1.getClass()
            r2.getClass()
            r0.<init>()
            return r0
        L19:
            androidx.fragment.app.FragmentManager$1 r0 = r2.onBackPressedCallback
            boolean r1 = r2.enableOnBackPressedCallback
            if (r1 == 0) goto L27
            int r2 = r2.getDestinationCountOnBackStack()
            r1 = 1
            if (r2 <= r1) goto L27
            goto L28
        L27:
            r1 = 0
        L28:
            r0.setEnabled(r1)
            kotlin.Unit r2 = kotlin.Unit.INSTANCE
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavController$$ExternalSyntheticLambda0.invoke():java.lang.Object");
    }
}
