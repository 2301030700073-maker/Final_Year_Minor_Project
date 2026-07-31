package net.thunderbird.feature.mail.message.list.ui.component;

import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.ChannelAsFlow;
import okhttp3.Cookie;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultMessageListScope {
    public final BufferedChannel _scrollEvents;
    public final ChannelAsFlow scrollEvents;

    public DefaultMessageListScope() {
        BufferedChannel Channel$default = Cookie.Companion.Channel$default(-1, null, null, 6);
        this._scrollEvents = Channel$default;
        this.scrollEvents = new ChannelAsFlow(Channel$default, false);
    }
}
