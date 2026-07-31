package org.wikipedia.compose.components.error;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WikiErrorClickEvents {
    public final Function0 backClickListener;
    public final Function0 loginClickListener;
    public final Function0 retryClickListener;

    public WikiErrorClickEvents(Function0 function0, Function0 function02, Function0 function03, int i) {
        function0 = (i & 1) != 0 ? null : function0;
        function02 = (i & 2) != 0 ? null : function02;
        function03 = (i & 8) != 0 ? null : function03;
        this.retryClickListener = function0;
        this.backClickListener = function02;
        this.loginClickListener = function03;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WikiErrorClickEvents)) {
            return false;
        }
        WikiErrorClickEvents wikiErrorClickEvents = (WikiErrorClickEvents) obj;
        return Intrinsics.areEqual(this.retryClickListener, wikiErrorClickEvents.retryClickListener) && Intrinsics.areEqual(this.backClickListener, wikiErrorClickEvents.backClickListener) && Intrinsics.areEqual(this.loginClickListener, wikiErrorClickEvents.loginClickListener);
    }

    public final int hashCode() {
        Function0 function0 = this.retryClickListener;
        int hashCode = (function0 == null ? 0 : function0.hashCode()) * 31;
        Function0 function02 = this.backClickListener;
        int hashCode2 = (hashCode + (function02 == null ? 0 : function02.hashCode())) * 961;
        Function0 function03 = this.loginClickListener;
        return hashCode2 + (function03 != null ? function03.hashCode() : 0);
    }

    public final String toString() {
        return "WikiErrorClickEvents(retryClickListener=" + this.retryClickListener + ", backClickListener=" + this.backClickListener + ", nextClickListener=null, loginClickListener=" + this.loginClickListener + ")";
    }
}
