package androidx.collection;

/* compiled from: ObjectList.kt */
/* loaded from: classes.dex */
public abstract class ObjectListKt {
    private static final Object[] EmptyArray = new Object[0];
    private static final ObjectList EmptyObjectList = new MutableObjectList(0);

    public static final MutableObjectList mutableObjectListOf(Object obj) {
        MutableObjectList mutableObjectList = new MutableObjectList(1);
        mutableObjectList.add(obj);
        return mutableObjectList;
    }
}
