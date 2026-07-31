package androidx.compose.material3;

import androidx.appcompat.widget.PopupMenu$1;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PinnedScrollBehavior {
    public final Function0 canScroll;
    public final PopupMenu$1 nestedScrollConnection = new PopupMenu$1(23, this);
    public final TopAppBarState state;

    public PinnedScrollBehavior(TopAppBarState topAppBarState, Function0 function0) {
        this.state = topAppBarState;
        this.canScroll = function0;
    }
}
