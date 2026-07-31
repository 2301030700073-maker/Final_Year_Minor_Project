package net.thunderbird.feature.mail.message.list.internal.ui.state.machine;

import kotlin.time.Clock;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.debugging.DefaultDebuggingSettingsPreferenceManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListStateMachine$Factory {
    public final Clock clock;
    public final DefaultDebuggingSettingsPreferenceManager debuggingSettingsPreferenceManager;
    public final Logger logger;

    public MessageListStateMachine$Factory(Logger logger, Clock clock, DefaultDebuggingSettingsPreferenceManager defaultDebuggingSettingsPreferenceManager) {
        this.logger = logger;
        this.clock = clock;
        this.debuggingSettingsPreferenceManager = defaultDebuggingSettingsPreferenceManager;
    }
}
