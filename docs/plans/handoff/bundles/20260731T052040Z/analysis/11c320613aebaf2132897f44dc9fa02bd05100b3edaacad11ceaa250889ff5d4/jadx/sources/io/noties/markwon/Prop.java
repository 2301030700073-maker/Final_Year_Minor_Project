package io.noties.markwon;

import androidx.compose.ui.Modifier;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.util.HashMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Prop {
    public final String name;

    public Prop(String str) {
        this.name = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Prop.class != obj.getClass()) {
            return false;
        }
        return this.name.equals(((Prop) obj).name);
    }

    public final int hashCode() {
        return this.name.hashCode();
    }

    public final Object require(RenderPropsImpl renderPropsImpl) {
        Object obj = renderPropsImpl.values.get(this);
        if (obj != null) {
            return obj;
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1(this.name);
        return null;
    }

    public final void set(RenderPropsImpl renderPropsImpl, Object obj) {
        HashMap hashMap = renderPropsImpl.values;
        if (obj == null) {
            hashMap.remove(this);
        } else {
            hashMap.put(this, obj);
        }
    }

    public final String toString() {
        return Modifier.CC.m(new StringBuilder("Prop{name='"), this.name, "'}");
    }
}
