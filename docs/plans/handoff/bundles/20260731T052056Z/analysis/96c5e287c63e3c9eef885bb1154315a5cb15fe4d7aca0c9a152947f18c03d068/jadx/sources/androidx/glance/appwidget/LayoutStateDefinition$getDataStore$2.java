package androidx.glance.appwidget;

import android.content.Context;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LayoutStateDefinition$getDataStore$2 extends Lambda implements Function0 {
    public final /* synthetic */ Context $context;
    public final /* synthetic */ String $fileKey;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LayoutStateDefinition$getDataStore$2(int i, Context context, String str) {
        super(0);
        this.$r8$classId = i;
        this.$context = context;
        this.$fileKey = str;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        String str = this.$fileKey;
        Context context = this.$context;
        switch (i) {
            case 0:
                return ExceptionsKt.dataStoreFile(context, str);
            default:
                return ResultKt.preferencesDataStoreFile(context, str);
        }
    }
}
