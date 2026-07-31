package org.schabi.newpipe.util;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.schabi.newpipe.extractor.StreamingService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class ServiceHelper$getNameOfServiceById$2 extends FunctionReferenceImpl implements Function1 {
    public static final ServiceHelper$getNameOfServiceById$2 INSTANCE = new ServiceHelper$getNameOfServiceById$2(1, StreamingService.class, "getServiceInfo", "getServiceInfo()Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        StreamingService streamingService = (StreamingService) obj;
        streamingService.getClass();
        return streamingService.serviceInfo;
    }
}
