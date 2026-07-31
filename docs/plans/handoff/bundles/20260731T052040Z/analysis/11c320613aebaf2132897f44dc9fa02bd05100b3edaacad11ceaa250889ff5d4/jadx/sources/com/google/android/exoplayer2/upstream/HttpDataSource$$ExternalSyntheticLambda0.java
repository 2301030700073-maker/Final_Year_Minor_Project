package com.google.android.exoplayer2.upstream;

import android.text.TextUtils;
import androidx.room.Room;
import com.google.android.exoplayer2.upstream.DefaultHttpDataSource;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.common.base.Predicate;
import j$.util.function.Predicate$CC;
import java.util.Map;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class HttpDataSource$$ExternalSyntheticLambda0 implements Predicate {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ HttpDataSource$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    public /* synthetic */ java.util.function.Predicate and(java.util.function.Predicate predicate) {
        int i = this.$r8$classId;
        return Predicate$CC.$default$and(this, predicate);
    }

    @Override // com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        boolean lambda$keySet$0;
        boolean lambda$entrySet$1;
        switch (this.$r8$classId) {
            case 0:
                String str = (String) obj;
                if (str != null) {
                    String lowerCase = Room.toLowerCase(str);
                    if (!TextUtils.isEmpty(lowerCase) && ((!lowerCase.contains("text") || lowerCase.contains(MimeTypes.TEXT_VTT)) && !lowerCase.contains("html") && !lowerCase.contains("xml"))) {
                        return true;
                    }
                }
                return false;
            case 1:
                lambda$keySet$0 = DefaultHttpDataSource.NullFilteringHeadersMap.lambda$keySet$0((String) obj);
                return lambda$keySet$0;
            default:
                lambda$entrySet$1 = DefaultHttpDataSource.NullFilteringHeadersMap.lambda$entrySet$1((Map.Entry) obj);
                return lambda$entrySet$1;
        }
    }

    public /* synthetic */ java.util.function.Predicate negate() {
        int i = this.$r8$classId;
        return Predicate$CC.$default$negate(this);
    }

    public /* synthetic */ java.util.function.Predicate or(java.util.function.Predicate predicate) {
        int i = this.$r8$classId;
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        boolean lambda$keySet$0;
        boolean lambda$entrySet$1;
        switch (this.$r8$classId) {
            case 0:
                return apply(obj);
            case 1:
                lambda$keySet$0 = DefaultHttpDataSource.NullFilteringHeadersMap.lambda$keySet$0((String) obj);
                return lambda$keySet$0;
            default:
                lambda$entrySet$1 = DefaultHttpDataSource.NullFilteringHeadersMap.lambda$entrySet$1((Map.Entry) obj);
                return lambda$entrySet$1;
        }
    }
}
