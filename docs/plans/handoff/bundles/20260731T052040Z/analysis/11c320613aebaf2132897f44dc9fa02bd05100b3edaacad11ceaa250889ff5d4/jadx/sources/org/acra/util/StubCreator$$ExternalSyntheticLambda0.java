package org.acra.util;

import android.util.Log;
import androidx.compose.ui.node.Owner;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import org.acra.ACRA;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class StubCreator$$ExternalSyntheticLambda0 implements InvocationHandler {
    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        Log.w("ACRA", Owner.CC.m("ErrorReporter#", method.getName(), " called ", ACRA.isACRASenderServiceProcess() ? "in SenderService process" : "before ACRA#init (if you did call #init, check if your configuration is valid)", ". THIS CALL WILL BE IGNORED!"));
        return null;
    }
}
