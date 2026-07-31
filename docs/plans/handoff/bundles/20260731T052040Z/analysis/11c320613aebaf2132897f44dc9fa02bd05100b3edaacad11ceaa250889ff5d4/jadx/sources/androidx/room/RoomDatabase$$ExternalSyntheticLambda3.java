package androidx.room;

import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.sqlite.SQLiteConnection;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class RoomDatabase$$ExternalSyntheticLambda3 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function0 f$0;

    public /* synthetic */ RoomDatabase$$ExternalSyntheticLambda3(int i, Function0 function0) {
        this.$r8$classId = i;
        this.f$0 = function0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Function0 function0 = this.f$0;
        switch (i) {
            case 0:
                ((SQLiteConnection) obj).getClass();
                return function0.invoke();
            default:
                ((ReusableGraphicsLayerScope) obj).setAlpha(((Number) function0.invoke()).floatValue());
                return Unit.INSTANCE;
        }
    }
}
