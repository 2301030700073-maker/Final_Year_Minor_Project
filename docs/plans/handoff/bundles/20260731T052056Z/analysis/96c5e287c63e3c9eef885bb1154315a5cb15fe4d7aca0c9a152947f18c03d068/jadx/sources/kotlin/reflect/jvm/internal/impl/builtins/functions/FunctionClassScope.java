package kotlin.reflect.jvm.internal.impl.builtins.functions;

import androidx.room.Room;
import java.util.List;
import kotlin.ResultKt;
import kotlin.collections.EmptyList;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FunctionClassScope extends GivenFunctionsMemberScope {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FunctionClassKind.values().length];
            try {
                iArr[FunctionClassKind.Function.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FunctionClassKind.SuspendFunction.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope
    public final List computeDeclaredFunctions() {
        FunctionClassDescriptor functionClassDescriptor = (FunctionClassDescriptor) this.containingClass;
        int i = WhenMappings.$EnumSwitchMapping$0[functionClassDescriptor.functionKind.ordinal()];
        return i != 1 ? i != 2 ? EmptyList.INSTANCE : Room.listOf(ResultKt.create(functionClassDescriptor, true)) : Room.listOf(ResultKt.create(functionClassDescriptor, false));
    }
}
