package com.google.auto.service.processor;

import com.google.common.collect.Maps;
import com.google.common.collect.Platform;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import javax.annotation.processing.AbstractProcessor;
import okio.Okio;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AutoServiceProcessor extends AbstractProcessor {
    public AutoServiceProcessor() {
        DesugarCollections.synchronizedList(new ArrayList());
        int i = Platform.$r8$clinit;
        Okio.checkArgument(Maps.newHashMapWithExpectedSize(12).isEmpty());
    }
}
