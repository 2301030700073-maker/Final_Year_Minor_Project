package org.wikipedia.talk;

import androidx.lifecycle.Observer;
import kotlin.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TalkReplyActivity$sam$androidx_lifecycle_Observer$0 implements Observer, FunctionAdapter {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 function;

    public /* synthetic */ TalkReplyActivity$sam$androidx_lifecycle_Observer$0(Function1 function1, int i) {
        this.$r8$classId = i;
        this.function = function1;
    }

    public final boolean equals(Object obj) {
        int i = this.$r8$classId;
        Function1 function1 = this.function;
        switch (i) {
            case 0:
                if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                    break;
                }
                break;
            case 1:
                if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                    break;
                }
                break;
            case 2:
                if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                    break;
                }
                break;
            default:
                if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                    break;
                }
                break;
        }
        return function1.equals(((FunctionAdapter) obj).getFunctionDelegate());
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function getFunctionDelegate() {
        int i = this.$r8$classId;
        return this.function;
    }

    public final int hashCode() {
        int i = this.$r8$classId;
        Function1 function1 = this.function;
        switch (i) {
        }
        return function1.hashCode();
    }

    @Override // androidx.lifecycle.Observer
    public final /* synthetic */ void onChanged(Object obj) {
        int i = this.$r8$classId;
        Function1 function1 = this.function;
        switch (i) {
            case 0:
                function1.invoke(obj);
                break;
            case 1:
                function1.invoke(obj);
                break;
            case 2:
                function1.invoke(obj);
                break;
            default:
                function1.invoke(obj);
                break;
        }
    }
}
