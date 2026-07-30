package defpackage;

import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class XK extends AbstractC0459Qp implements InterfaceC2650dk<View, Iterator<? extends View>> {

    /* renamed from: do, reason: not valid java name */
    public static final XK f4499do = new XK();

    public XK() {
        super(1);
    }

    @Override // defpackage.InterfaceC2650dk
    /* renamed from: this */
    public final Iterator<? extends View> mo364this(View view) {
        View view2 = view;
        ViewGroup viewGroup = view2 instanceof ViewGroup ? (ViewGroup) view2 : null;
        if (viewGroup != null) {
            return new YK(viewGroup);
        }
        return null;
    }
}
