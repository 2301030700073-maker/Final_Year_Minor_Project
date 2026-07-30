package defpackage;

import android.os.Build;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import com.joeykrim.rootcheck.R;
import defpackage.QK;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* renamed from: Hp, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0262Hp {

    /* renamed from: do, reason: not valid java name */
    public static Field f1392do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static Method f1393do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static boolean f1394do = false;

    /* renamed from: if, reason: not valid java name */
    public static boolean f1395if = false;

    /* renamed from: Hp$do, reason: invalid class name */
    public interface Cdo {
        /* renamed from: case, reason: not valid java name */
        boolean mo887case(KeyEvent keyEvent);
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m885do(View view, KeyEvent keyEvent) {
        WeakReference<View> weakReference;
        int indexOfKey;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        if (Build.VERSION.SDK_INT < 28) {
            ArrayList<WeakReference<View>> arrayList = QK.Cfinal.f2914do;
            QK.Cfinal cfinal = (QK.Cfinal) view.getTag(R.id.tag_unhandled_key_event_manager);
            if (cfinal == null) {
                cfinal = new QK.Cfinal();
                view.setTag(R.id.tag_unhandled_key_event_manager, cfinal);
            }
            WeakReference<KeyEvent> weakReference2 = cfinal.f2916do;
            if (weakReference2 == null || weakReference2.get() != keyEvent) {
                cfinal.f2916do = new WeakReference<>(keyEvent);
                if (cfinal.f2915do == null) {
                    cfinal.f2915do = new SparseArray<>();
                }
                SparseArray<WeakReference<View>> sparseArray = cfinal.f2915do;
                if (keyEvent.getAction() != 1 || (indexOfKey = sparseArray.indexOfKey(keyEvent.getKeyCode())) < 0) {
                    weakReference = null;
                } else {
                    weakReference = sparseArray.valueAt(indexOfKey);
                    sparseArray.removeAt(indexOfKey);
                }
                if (weakReference == null) {
                    weakReference = sparseArray.get(keyEvent.getKeyCode());
                }
                if (weakReference != null) {
                    View view2 = weakReference.get();
                    if (view2 == null || !view2.isAttachedToWindow()) {
                        return true;
                    }
                    QK.Cfinal.m1900if(view2, keyEvent);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    @android.annotation.SuppressLint({"LambdaLast"})
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m886if(defpackage.C0262Hp.Cdo r7, android.view.View r8, android.view.Window.Callback r9, android.view.KeyEvent r10) {
        /*
            r0 = 0
            if (r7 != 0) goto L4
            return r0
        L4:
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 28
            if (r1 < r2) goto Lf
            boolean r7 = r7.mo887case(r10)
            return r7
        Lf:
            boolean r1 = r9 instanceof android.app.Activity
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L83
            android.app.Activity r9 = (android.app.Activity) r9
            r9.onUserInteraction()
            android.view.Window r7 = r9.getWindow()
            r8 = 8
            boolean r8 = r7.hasFeature(r8)
            if (r8 == 0) goto L66
            android.app.ActionBar r8 = r9.getActionBar()
            int r1 = r10.getKeyCode()
            r4 = 82
            if (r1 != r4) goto L66
            if (r8 == 0) goto L66
            boolean r1 = defpackage.C0262Hp.f1394do
            if (r1 != 0) goto L4c
            java.lang.Class r1 = r8.getClass()     // Catch: java.lang.NoSuchMethodException -> L4a
            java.lang.String r4 = "onMenuKeyEvent"
            java.lang.Class[] r5 = new java.lang.Class[r3]     // Catch: java.lang.NoSuchMethodException -> L4a
            java.lang.Class<android.view.KeyEvent> r6 = android.view.KeyEvent.class
            r5[r0] = r6     // Catch: java.lang.NoSuchMethodException -> L4a
            java.lang.reflect.Method r1 = r1.getMethod(r4, r5)     // Catch: java.lang.NoSuchMethodException -> L4a
            defpackage.C0262Hp.f1393do = r1     // Catch: java.lang.NoSuchMethodException -> L4a
        L4a:
            defpackage.C0262Hp.f1394do = r3
        L4c:
            java.lang.reflect.Method r1 = defpackage.C0262Hp.f1393do
            if (r1 == 0) goto L63
            java.lang.Object[] r4 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L62
            r4[r0] = r10     // Catch: java.lang.Throwable -> L62
            java.lang.Object r8 = r1.invoke(r8, r4)     // Catch: java.lang.Throwable -> L62
            if (r8 != 0) goto L5b
            goto L63
        L5b:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L62
            boolean r0 = r8.booleanValue()     // Catch: java.lang.Throwable -> L62
            goto L63
        L62:
        L63:
            if (r0 == 0) goto L66
            goto L82
        L66:
            boolean r8 = r7.superDispatchKeyEvent(r10)
            if (r8 == 0) goto L6d
            goto L82
        L6d:
            android.view.View r7 = r7.getDecorView()
            boolean r8 = defpackage.QK.m1854for(r7, r10)
            if (r8 == 0) goto L78
            goto L82
        L78:
            if (r7 == 0) goto L7e
            android.view.KeyEvent$DispatcherState r2 = r7.getKeyDispatcherState()
        L7e:
            boolean r3 = r10.dispatch(r9, r2, r9)
        L82:
            return r3
        L83:
            boolean r1 = r9 instanceof android.app.Dialog
            if (r1 == 0) goto Ld7
            android.app.Dialog r9 = (android.app.Dialog) r9
            boolean r7 = defpackage.C0262Hp.f1395if
            if (r7 != 0) goto L9c
            java.lang.Class<android.app.Dialog> r7 = android.app.Dialog.class
            java.lang.String r8 = "mOnKeyListener"
            java.lang.reflect.Field r7 = r7.getDeclaredField(r8)     // Catch: java.lang.NoSuchFieldException -> L9a
            defpackage.C0262Hp.f1392do = r7     // Catch: java.lang.NoSuchFieldException -> L9a
            r7.setAccessible(r3)     // Catch: java.lang.NoSuchFieldException -> L9a
        L9a:
            defpackage.C0262Hp.f1395if = r3
        L9c:
            java.lang.reflect.Field r7 = defpackage.C0262Hp.f1392do
            if (r7 == 0) goto La8
            java.lang.Object r7 = r7.get(r9)     // Catch: java.lang.IllegalAccessException -> La7
            android.content.DialogInterface$OnKeyListener r7 = (android.content.DialogInterface.OnKeyListener) r7     // Catch: java.lang.IllegalAccessException -> La7
            goto La9
        La7:
        La8:
            r7 = r2
        La9:
            if (r7 == 0) goto Lb6
            int r8 = r10.getKeyCode()
            boolean r7 = r7.onKey(r9, r8, r10)
            if (r7 == 0) goto Lb6
            goto Ld6
        Lb6:
            android.view.Window r7 = r9.getWindow()
            boolean r8 = r7.superDispatchKeyEvent(r10)
            if (r8 == 0) goto Lc1
            goto Ld6
        Lc1:
            android.view.View r7 = r7.getDecorView()
            boolean r8 = defpackage.QK.m1854for(r7, r10)
            if (r8 == 0) goto Lcc
            goto Ld6
        Lcc:
            if (r7 == 0) goto Ld2
            android.view.KeyEvent$DispatcherState r2 = r7.getKeyDispatcherState()
        Ld2:
            boolean r3 = r10.dispatch(r9, r2, r9)
        Ld6:
            return r3
        Ld7:
            if (r8 == 0) goto Ldf
            boolean r8 = defpackage.QK.m1854for(r8, r10)
            if (r8 != 0) goto Le5
        Ldf:
            boolean r7 = r7.mo887case(r10)
            if (r7 == 0) goto Le6
        Le5:
            r0 = 1
        Le6:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0262Hp.m886if(Hp$do, android.view.View, android.view.Window$Callback, android.view.KeyEvent):boolean");
    }
}
