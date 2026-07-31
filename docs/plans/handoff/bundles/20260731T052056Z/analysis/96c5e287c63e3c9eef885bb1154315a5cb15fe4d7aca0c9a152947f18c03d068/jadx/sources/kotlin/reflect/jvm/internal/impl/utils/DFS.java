package kotlin.reflect.jvm.internal.impl.utils;

import androidx.room.Room;
import coil3.util.UtilsKt;
import com.airbnb.lottie.LottieFeatureFlags;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsSignatures;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DFS {
    public static final WrappedValues$1 NULL_VALUE = new WrappedValues$1();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Neighbors {
        Iterable getNeighbors(Object obj);
    }

    public static final List compact(ArrayList arrayList) {
        int size = arrayList.size();
        if (size == 0) {
            return EmptyList.INSTANCE;
        }
        if (size == 1) {
            return Room.listOf(CollectionsKt.first((List) arrayList));
        }
        arrayList.trimToSize();
        return arrayList;
    }

    public static Object dfs(List list, Neighbors neighbors, DFS dfs) {
        LottieFeatureFlags lottieFeatureFlags = new LottieFeatureFlags(1);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            doDfs(it.next(), neighbors, lottieFeatureFlags, dfs);
        }
        return dfs.result();
    }

    public static void doDfs(Object obj, Neighbors neighbors, LottieFeatureFlags lottieFeatureFlags, DFS dfs) {
        if (obj != null) {
            if (lottieFeatureFlags.enabledFlags.add(obj) && dfs.beforeChildren(obj)) {
                Iterator it = neighbors.getNeighbors(obj).iterator();
                while (it.hasNext()) {
                    doDfs(it.next(), neighbors, lottieFeatureFlags, dfs);
                }
                dfs.afterChildren(obj);
                return;
            }
            return;
        }
        Object[] objArr = new Object[3];
        switch (22) {
            case 1:
            case 5:
            case 8:
            case 11:
            case 15:
            case RADIO_GROUP_VALUE:
            case RADIO_COLUMN_VALUE:
            case 23:
                objArr[0] = "neighbors";
                break;
            case 2:
            case 12:
            case LAZY_VERTICAL_GRID_VALUE:
            case RADIO_BUTTON_VALUE:
            case 24:
                objArr[0] = "visited";
                break;
            case 3:
            case 6:
            case IMAGE_VALUE:
            case 25:
                objArr[0] = "handler";
                break;
            case 4:
            case 7:
            case VERTICAL_GRID_ITEM_VALUE:
            case RADIO_ROW_VALUE:
            default:
                objArr[0] = "nodes";
                break;
            case 9:
                objArr[0] = "predicate";
                break;
            case 10:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                objArr[0] = "node";
                break;
            case SIZE_BOX_VALUE:
                objArr[0] = "current";
                break;
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/DFS";
        switch (22) {
            case 7:
            case 8:
            case 9:
                objArr[2] = "ifAny";
                break;
            case 10:
            case 11:
            case 12:
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
                objArr[2] = "dfsFromNode";
                break;
            case VERTICAL_GRID_ITEM_VALUE:
            case RADIO_GROUP_VALUE:
            case RADIO_BUTTON_VALUE:
            case RADIO_ROW_VALUE:
            case RADIO_COLUMN_VALUE:
                objArr[2] = "topologicalOrder";
                break;
            case SIZE_BOX_VALUE:
            case 23:
            case 24:
            case 25:
                objArr[2] = "doDfs";
                break;
            default:
                objArr[2] = "dfs";
                break;
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [boolean[], java.io.Serializable] */
    public static Boolean ifAny(List list, Neighbors neighbors, Function1 function1) {
        return (Boolean) dfs(list, neighbors, new AnonymousClass1(function1, new boolean[1], 0));
    }

    public static final boolean isProcessCanceledException(Throwable th) {
        Class<?> cls = th.getClass();
        while (!Intrinsics.areEqual(cls.getCanonicalName(), "com.intellij.openapi.progress.ProcessCanceledException")) {
            cls = cls.getSuperclass();
            if (cls == null) {
                return false;
            }
        }
        return true;
    }

    public static void unescapeThrowable(Object obj) {
        if (obj instanceof WrappedValues$ThrowableWrapper) {
            throw ((WrappedValues$ThrowableWrapper) obj).throwable;
        }
    }

    public abstract boolean beforeChildren(Object obj);

    public abstract Object result();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.DFS$1, reason: invalid class name */
    public final class AnonymousClass1 extends DFS {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object val$predicate;
        public final /* synthetic */ Serializable val$result;

        public AnonymousClass1(Ref$ObjectRef ref$ObjectRef, Function1 function1) {
            this.$r8$classId = 2;
            this.val$result = ref$ObjectRef;
            this.val$predicate = function1;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS
        public void afterChildren(Object obj) {
            switch (this.$r8$classId) {
                case 2:
                    CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) obj;
                    callableMemberDescriptor.getClass();
                    Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) this.val$result;
                    if (ref$ObjectRef.element == null && ((Boolean) ((Function1) this.val$predicate).invoke(callableMemberDescriptor)).booleanValue()) {
                        ref$ObjectRef.element = callableMemberDescriptor;
                        break;
                    }
                    break;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS
        public final boolean beforeChildren(Object obj) {
            int i = this.$r8$classId;
            Object obj2 = this.val$predicate;
            Object obj3 = this.val$result;
            switch (i) {
                case 0:
                    boolean[] zArr = (boolean[]) obj3;
                    if (((Boolean) ((Function1) obj2).invoke(obj)).booleanValue()) {
                        zArr[0] = true;
                    }
                    break;
                case 1:
                    ModuleAwareClassDescriptor moduleAwareClassDescriptor = (ModuleAwareClassDescriptor) obj;
                    Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj3;
                    moduleAwareClassDescriptor.getClass();
                    String signature = UtilsKt.signature(moduleAwareClassDescriptor, (String) obj2);
                    if (JvmBuiltInsSignatures.HIDDEN_METHOD_SIGNATURES.contains(signature)) {
                        ref$ObjectRef.element = JvmBuiltInsCustomizer.JDKMemberStatus.HIDDEN;
                    } else if (JvmBuiltInsSignatures.VISIBLE_METHOD_SIGNATURES.contains(signature)) {
                        ref$ObjectRef.element = JvmBuiltInsCustomizer.JDKMemberStatus.VISIBLE;
                    } else if (JvmBuiltInsSignatures.DROP_LIST_METHOD_SIGNATURES.contains(signature)) {
                        ref$ObjectRef.element = JvmBuiltInsCustomizer.JDKMemberStatus.DROP;
                    }
                    if (ref$ObjectRef.element == null) {
                        break;
                    }
                    break;
                default:
                    ((CallableMemberDescriptor) obj).getClass();
                    if (((Ref$ObjectRef) obj3).element == null) {
                        break;
                    }
                    break;
            }
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS
        public final Object result() {
            int i = this.$r8$classId;
            Object obj = this.val$result;
            switch (i) {
                case 0:
                    return Boolean.valueOf(((boolean[]) obj)[0]);
                case 1:
                    JvmBuiltInsCustomizer.JDKMemberStatus jDKMemberStatus = (JvmBuiltInsCustomizer.JDKMemberStatus) ((Ref$ObjectRef) obj).element;
                    return jDKMemberStatus == null ? JvmBuiltInsCustomizer.JDKMemberStatus.NOT_CONSIDERED : jDKMemberStatus;
                default:
                    return (CallableMemberDescriptor) ((Ref$ObjectRef) obj).element;
            }
        }

        public /* synthetic */ AnonymousClass1(Object obj, Serializable serializable, int i) {
            this.$r8$classId = i;
            this.val$predicate = obj;
            this.val$result = serializable;
        }
    }

    public void afterChildren(Object obj) {
    }
}
