package org.acra.collector;

import android.content.Context;
import org.acra.config.CoreConfiguration;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface ApplicationStartupCollector extends Collector {
    void collectApplicationStartUp(Context context, CoreConfiguration coreConfiguration);

    @Override // org.acra.collector.Collector, org.acra.plugins.Plugin
    /* bridge */ /* synthetic */ boolean enabled(CoreConfiguration coreConfiguration);
}
