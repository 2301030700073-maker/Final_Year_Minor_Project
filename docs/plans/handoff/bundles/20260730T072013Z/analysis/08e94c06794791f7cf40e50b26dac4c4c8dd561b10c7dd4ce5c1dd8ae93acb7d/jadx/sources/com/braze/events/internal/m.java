package com.braze.events.internal;

import com.braze.models.inappmessage.IInAppMessage;
import com.braze.support.JsonUtils;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final com.braze.triggers.events.b f67a;
    public final com.braze.triggers.actions.h b;
    public final IInAppMessage c;
    public final String d;

    public m(com.braze.triggers.events.b triggerEvent, com.braze.triggers.actions.h triggeredAction, IInAppMessage inAppMessage, String str) {
        Intrinsics.checkNotNullParameter(triggerEvent, "triggerEvent");
        Intrinsics.checkNotNullParameter(triggeredAction, "triggeredAction");
        Intrinsics.checkNotNullParameter(inAppMessage, "inAppMessage");
        this.f67a = triggerEvent;
        this.b = triggeredAction;
        this.c = inAppMessage;
        this.d = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return Intrinsics.areEqual(this.f67a, mVar.f67a) && Intrinsics.areEqual(this.b, mVar.b) && Intrinsics.areEqual(this.c, mVar.c) && Intrinsics.areEqual(this.d, mVar.d);
    }

    public final int hashCode() {
        int hashCode = (this.c.hashCode() + ((this.b.hashCode() + (this.f67a.hashCode() * 31)) * 31)) * 31;
        String str = this.d;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return StringsKt.trimIndent("\n             " + JsonUtils.getPrettyPrintedString(this.c.getJsonKey()) + "\n             Triggered Action Id: " + this.b.f263a + "\n             Trigger Event: " + this.f67a + "\n             User Id: " + this.d + "\n        ");
    }
}
