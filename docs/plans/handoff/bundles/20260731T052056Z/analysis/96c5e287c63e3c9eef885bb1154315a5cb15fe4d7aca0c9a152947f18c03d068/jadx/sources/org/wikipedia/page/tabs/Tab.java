package org.wikipedia.page.tabs;

import coil3.util.ContextsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.page.PageBackStackItem;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class Tab {
    public final List backStack;
    public int backStackPosition;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Tab$$ExternalSyntheticLambda0(0)), null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return Tab$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ Tab(int i, int i2, List list) {
        this.backStack = (i & 1) == 0 ? new ArrayList() : list;
        if ((i & 2) == 0) {
            this.backStackPosition = -1;
        } else {
            this.backStackPosition = i2;
        }
    }

    public final int getBackStackPosition() {
        int i = this.backStackPosition;
        return i < 0 ? this.backStack.size() - 1 : i;
    }

    public final PageTitle getBackStackPositionTitle() {
        List list = this.backStack;
        if (list.isEmpty()) {
            return null;
        }
        return ((PageBackStackItem) list.get(getBackStackPosition())).title;
    }

    public Tab() {
        this.backStack = new ArrayList();
        this.backStackPosition = -1;
    }
}
