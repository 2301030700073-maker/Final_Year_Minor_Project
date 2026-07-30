package defpackage;

import defpackage.InterfaceC3161jb;
import java.util.concurrent.CancellationException;

/* renamed from: Yo, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public interface InterfaceC0634Yo extends InterfaceC3161jb.Cif {

    /* renamed from: if, reason: not valid java name */
    public static final /* synthetic */ int f4762if = 0;

    /* renamed from: Yo$do, reason: invalid class name */
    public static final class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static /* synthetic */ InterfaceC0273Ie m2959do(InterfaceC0634Yo interfaceC0634Yo, boolean z, AbstractC2654dp abstractC2654dp, int i) {
            if ((i & 1) != 0) {
                z = false;
            }
            return interfaceC0634Yo.mo2958public(z, (i & 2) != 0, abstractC2654dp);
        }
    }

    /* renamed from: Yo$if, reason: invalid class name */
    public static final class Cif implements InterfaceC3161jb.Cfor<InterfaceC0634Yo> {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ Cif f4763do = new Cif();
    }

    /* renamed from: do, reason: not valid java name */
    InterfaceC0634Yo mo2954do();

    InterfaceC0273Ie f(InterfaceC2650dk<? super Throwable, C3206kJ> interfaceC2650dk);

    /* renamed from: for, reason: not valid java name */
    boolean mo2955for();

    /* renamed from: goto, reason: not valid java name */
    CancellationException mo2956goto();

    /* renamed from: interface, reason: not valid java name */
    InterfaceC3960x7 mo2957interface(C2713ep c2713ep);

    boolean isCancelled();

    void j(CancellationException cancellationException);

    /* renamed from: public, reason: not valid java name */
    InterfaceC0273Ie mo2958public(boolean z, boolean z2, InterfaceC2650dk<? super Throwable, C3206kJ> interfaceC2650dk);

    boolean start();
}
