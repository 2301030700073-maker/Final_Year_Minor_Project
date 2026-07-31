package androidx.room;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.sqlite.SQLiteConnection;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        Unit unit = Unit.INSTANCE;
        Function0 function0 = this.f$0;
        switch (i) {
            case 0:
                ((SQLiteConnection) obj).getClass();
                return function0.invoke();
            case 1:
                return (Offset) function0.invoke();
            case 2:
                return (Offset) function0.invoke();
            case 3:
                ((ReusableGraphicsLayerScope) obj).setAlpha(((Number) function0.invoke()).floatValue());
                return unit;
            case 4:
                obj.getClass();
                return function0.invoke();
            default:
                String str = (String) obj;
                str.getClass();
                if (str.equals("#drivingFeed")) {
                    function0.invoke();
                }
                return unit;
        }
    }
}
