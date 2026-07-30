package defpackage;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import java.util.LinkedList;

/* renamed from: tw, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C3771tw extends CE implements InterfaceC3830uw {

    /* renamed from: do, reason: not valid java name */
    public InterfaceC3830uw f15819do;

    @Override // defpackage.InterfaceC3830uw
    /* renamed from: do */
    public final void mo6382do(float f) {
        InterfaceC3830uw interfaceC3830uw = this.f15819do;
        if (interfaceC3830uw != null) {
            interfaceC3830uw.mo6382do(f);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        InterfaceC3830uw interfaceC3830uw;
        LinkedList linkedList = new LinkedList();
        linkedList.add(view);
        while (true) {
            if (linkedList.isEmpty()) {
                interfaceC3830uw = null;
                break;
            }
            KeyEvent.Callback callback = (View) linkedList.remove();
            if (callback instanceof InterfaceC3830uw) {
                interfaceC3830uw = (InterfaceC3830uw) callback;
                break;
            } else if (callback instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) callback;
                int childCount = viewGroup.getChildCount();
                while (true) {
                    childCount--;
                    if (childCount >= 0) {
                        linkedList.add(viewGroup.getChildAt(childCount));
                    }
                }
            }
        }
        this.f15819do = interfaceC3830uw;
    }
}
