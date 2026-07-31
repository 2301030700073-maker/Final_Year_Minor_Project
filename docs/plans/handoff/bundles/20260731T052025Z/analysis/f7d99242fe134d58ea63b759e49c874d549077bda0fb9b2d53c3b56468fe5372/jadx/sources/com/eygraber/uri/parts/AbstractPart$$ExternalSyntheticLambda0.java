package com.eygraber.uri.parts;

import com.eygraber.uri.NotCachedHolder;
import com.eygraber.uri.UriCodec;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.CharRange;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AbstractPart$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ AbstractPart f$0;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ String f$2;

    public /* synthetic */ AbstractPart$$ExternalSyntheticLambda0(AbstractPart abstractPart, String str, String str2) {
        this.f$0 = abstractPart;
        this.f$1 = str;
        this.f$2 = str2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        String str = this.f$2;
        AbstractPart abstractPart = this.f$0;
        String str2 = this.f$1;
        switch (i) {
            case 0:
                if (!abstractPart.wasEncodedCached && !Intrinsics.areEqual(str2, NotCachedHolder.NotCached)) {
                    return str2;
                }
                CharRange charRange = UriCodec.lowercaseAsciiAlphaRange;
                if (str == null) {
                    return null;
                }
                return UriCodec.decode(str);
            default:
                return Intrinsics.areEqual(str2, NotCachedHolder.NotCached) ? abstractPart.encode(str) : str2;
        }
    }

    public /* synthetic */ AbstractPart$$ExternalSyntheticLambda0(String str, AbstractPart abstractPart, String str2) {
        this.f$1 = str;
        this.f$0 = abstractPart;
        this.f$2 = str2;
    }
}
