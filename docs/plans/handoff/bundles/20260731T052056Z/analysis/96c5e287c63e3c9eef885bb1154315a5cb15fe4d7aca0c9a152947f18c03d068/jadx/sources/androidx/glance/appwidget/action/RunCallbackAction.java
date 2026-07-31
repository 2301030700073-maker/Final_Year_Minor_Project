package androidx.glance.appwidget.action;

import androidx.glance.action.Action;
import androidx.glance.action.MutableActionParameters;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RunCallbackAction implements Action {
    public final Class callbackClass;
    public final MutableActionParameters parameters;

    public RunCallbackAction(Class cls, MutableActionParameters mutableActionParameters) {
        this.callbackClass = cls;
        this.parameters = mutableActionParameters;
    }
}
