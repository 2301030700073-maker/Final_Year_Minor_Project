package org.mozilla.javascript;

import androidx.compose.ui.node.Owner;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class IdScriptableObject extends ScriptableObject implements IdFunctionCall {
    private static final long serialVersionUID = -3744239272168621609L;
    private transient PrototypeValues prototypeValues;

    public IdScriptableObject() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T ensureType(Object obj, Class<T> cls, String str) {
        if (cls.isInstance(obj)) {
            return obj;
        }
        if (obj == 0) {
            throw ScriptRuntime.typeErrorById("msg.incompat.call.details", str, "null", cls.getName());
        }
        throw ScriptRuntime.typeErrorById("msg.incompat.call.details", str, obj.getClass().getName(), cls.getName());
    }

    private ScriptableObject getBuiltInDataDescriptor(String str) {
        Scriptable parentScope = getParentScope();
        if (parentScope == null) {
            parentScope = this;
        }
        Slot builtInSlot = getBuiltInSlot(str);
        if (builtInSlot == null) {
            return null;
        }
        return ScriptableObject.buildDataDescriptor(parentScope, builtInSlot.value, builtInSlot.getAttributes());
    }

    private Slot getBuiltInSlot(String str) {
        int findId;
        int findInstanceIdInfo = findInstanceIdInfo(str);
        if (findInstanceIdInfo != 0) {
            Object instanceIdValue = getInstanceIdValue(65535 & findInstanceIdInfo);
            Slot slot = new Slot(str, 0, findInstanceIdInfo >>> 16);
            slot.value = instanceIdValue;
            return slot;
        }
        PrototypeValues prototypeValues = this.prototypeValues;
        if (prototypeValues == null || (findId = prototypeValues.findId(str)) == 0) {
            return null;
        }
        Object obj = this.prototypeValues.get(findId);
        Slot slot2 = new Slot(str, 0, this.prototypeValues.getAttributes(findId));
        slot2.value = obj;
        return slot2;
    }

    public static int instanceIdInfo(int i, int i2) {
        return (i << 16) | i2;
    }

    private IdFunctionObject newIdFunction(Object obj, int i, String str, int i2, Scriptable scriptable) {
        IdFunctionObject idFunctionObject = Context.getContext().getLanguageVersion() < 200 ? new IdFunctionObject(this, obj, i, str, i2, scriptable) : new IdFunctionObjectES6(this, obj, i, str, i2, scriptable);
        if (isSealed()) {
            idFunctionObject.sealObject();
        }
        return idFunctionObject;
    }

    private Slot queryOrFakeSlot(Context context, Object obj) {
        Slot querySlot = querySlot(context, obj);
        if (querySlot == null) {
            if (obj instanceof String) {
                return getBuiltInSlot((String) obj);
            }
            if (ScriptRuntime.isSymbol(obj)) {
                return obj instanceof SymbolKey ? getBuiltInSlot((SymbolKey) obj) : getBuiltInSlot(((NativeSymbol) obj).getKey());
            }
        }
        return querySlot;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        if (readInt != 0) {
            activatePrototypeMap(readInt);
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
        PrototypeValues prototypeValues = this.prototypeValues;
        objectOutputStream.writeInt(prototypeValues != null ? prototypeValues.getMaxId() : 0);
    }

    public final void activatePrototypeMap(int i) {
        PrototypeValues prototypeValues = new PrototypeValues(this, i);
        synchronized (this) {
            try {
                if (this.prototypeValues != null) {
                    throw new IllegalStateException();
                }
                this.prototypeValues = prototypeValues;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void addIdFunctionProperty(Scriptable scriptable, Object obj, int i, String str, int i2) {
        newIdFunction(obj, i, str, i2, ScriptableObject.getTopLevelScope(scriptable)).addAsProperty(scriptable);
    }

    public final Object defaultGet(String str) {
        return super.get(str, this);
    }

    public final boolean defaultHas(String str) {
        return super.has(str, this);
    }

    public final void defaultPut(String str, Object obj) {
        super.put(str, this, obj);
    }

    @Override // org.mozilla.javascript.ScriptableObject
    public boolean defineOwnProperty(Context context, Object obj, ScriptableObject scriptableObject, boolean z) {
        int findId;
        if (obj instanceof CharSequence) {
            String obj2 = obj.toString();
            int findInstanceIdInfo = findInstanceIdInfo(obj2);
            if (findInstanceIdInfo != 0) {
                int i = 65535 & findInstanceIdInfo;
                if (!ScriptableObject.isAccessorDescriptor(scriptableObject)) {
                    checkPropertyDefinition(scriptableObject);
                    checkPropertyChangeForSlot(obj2, queryOrFakeSlot(context, obj), scriptableObject);
                    int i2 = findInstanceIdInfo >>> 16;
                    Object property = ScriptableObject.getProperty(scriptableObject, ES6Iterator.VALUE_PROPERTY);
                    if (property != Scriptable.NOT_FOUND && (((i2 & 1) == 0 || (i2 & 4) == 0) && !sameValue(property, getInstanceIdValue(i)))) {
                        setInstanceIdValue(i, property);
                    }
                    setAttributes(obj2, applyDescriptorToAttributeBitset(i2, ScriptableObject.getProperty(scriptableObject, "enumerable"), ScriptableObject.getProperty(scriptableObject, "writable"), ScriptableObject.getProperty(scriptableObject, "configurable")));
                    return true;
                }
                delete(i);
            }
            PrototypeValues prototypeValues = this.prototypeValues;
            if (prototypeValues != null && (findId = prototypeValues.findId(obj2)) != 0) {
                if (!ScriptableObject.isAccessorDescriptor(scriptableObject)) {
                    checkPropertyDefinition(scriptableObject);
                    checkPropertyChangeForSlot(obj2, queryOrFakeSlot(context, obj), scriptableObject);
                    int attributes = this.prototypeValues.getAttributes(findId);
                    Object property2 = ScriptableObject.getProperty(scriptableObject, ES6Iterator.VALUE_PROPERTY);
                    if (property2 != Scriptable.NOT_FOUND && (attributes & 1) == 0 && !sameValue(property2, this.prototypeValues.get(findId))) {
                        this.prototypeValues.set(findId, this, property2);
                    }
                    this.prototypeValues.setAttributes(findId, applyDescriptorToAttributeBitset(attributes, ScriptableObject.getProperty(scriptableObject, "enumerable"), ScriptableObject.getProperty(scriptableObject, "writable"), ScriptableObject.getProperty(scriptableObject, "configurable")));
                    if (super.has(obj2, this)) {
                        super.delete(obj2);
                    }
                    return true;
                }
                this.prototypeValues.delete(findId);
            }
        }
        return super.defineOwnProperty(context, obj, scriptableObject, z);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void delete(String str) {
        int findId;
        int findInstanceIdInfo = findInstanceIdInfo(str);
        if (findInstanceIdInfo != 0 && !isSealed()) {
            if (((findInstanceIdInfo >>> 16) & 4) == 0) {
                setInstanceIdValue(65535 & findInstanceIdInfo, Scriptable.NOT_FOUND);
                return;
            } else {
                if (Context.getContext().isStrictMode()) {
                    throw ScriptRuntime.typeErrorById("msg.delete.property.with.configurable.false", str);
                }
                return;
            }
        }
        PrototypeValues prototypeValues = this.prototypeValues;
        if (prototypeValues == null || (findId = prototypeValues.findId(str)) == 0) {
            super.delete(str);
        } else {
            if (isSealed()) {
                return;
            }
            this.prototypeValues.delete(findId);
        }
    }

    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        throw idFunctionObject.unknown();
    }

    public final IdFunctionObject exportAsJSClass(int i, Scriptable scriptable, boolean z) {
        if (scriptable != this && scriptable != null) {
            setParentScope(scriptable);
            setPrototype(ScriptableObject.getObjectPrototype(scriptable));
        }
        activatePrototypeMap(i);
        IdFunctionObject createPrecachedConstructor = this.prototypeValues.createPrecachedConstructor();
        if (z) {
            sealObject();
        }
        fillConstructorProperties(createPrecachedConstructor);
        if (z) {
            createPrecachedConstructor.sealObject();
        }
        createPrecachedConstructor.exportAsScopeProperty();
        return createPrecachedConstructor;
    }

    public int findInstanceIdInfo(String str) {
        return 0;
    }

    public int findPrototypeId(String str) {
        throw new IllegalStateException(str);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object get(String str, Scriptable scriptable) {
        int findId;
        Object obj;
        Object instanceIdValue;
        Object obj2 = super.get(str, scriptable);
        Object obj3 = Scriptable.NOT_FOUND;
        if (obj2 != obj3) {
            return obj2;
        }
        int findInstanceIdInfo = findInstanceIdInfo(str);
        if (findInstanceIdInfo != 0 && (instanceIdValue = getInstanceIdValue(findInstanceIdInfo & 65535)) != obj3) {
            return instanceIdValue;
        }
        PrototypeValues prototypeValues = this.prototypeValues;
        return (prototypeValues == null || (findId = prototypeValues.findId(str)) == 0 || (obj = this.prototypeValues.get(findId)) == obj3) ? obj3 : obj;
    }

    @Override // org.mozilla.javascript.ScriptableObject
    public int getAttributes(String str) {
        int findId;
        int findInstanceIdInfo = findInstanceIdInfo(str);
        if (findInstanceIdInfo != 0) {
            return findInstanceIdInfo >>> 16;
        }
        PrototypeValues prototypeValues = this.prototypeValues;
        return (prototypeValues == null || (findId = prototypeValues.findId(str)) == 0) ? super.getAttributes(str) : this.prototypeValues.getAttributes(findId);
    }

    @Override // org.mozilla.javascript.ScriptableObject
    public Object[] getIds(boolean z, boolean z2) {
        Object[] ids = super.getIds(z, z2);
        PrototypeValues prototypeValues = this.prototypeValues;
        if (prototypeValues != null) {
            ids = prototypeValues.getNames(z, z2, ids);
        }
        int maxInstanceId = getMaxInstanceId();
        if (maxInstanceId != 0) {
            Object[] objArr = null;
            int i = 0;
            while (maxInstanceId != 0) {
                String instanceIdName = getInstanceIdName(maxInstanceId);
                int findInstanceIdInfo = findInstanceIdInfo(instanceIdName);
                if (findInstanceIdInfo != 0) {
                    int i2 = findInstanceIdInfo >>> 16;
                    if (((i2 & 4) != 0 || Scriptable.NOT_FOUND != getInstanceIdValue(maxInstanceId)) && (z || (i2 & 2) == 0)) {
                        if (i == 0) {
                            objArr = new Object[maxInstanceId];
                        }
                        objArr[i] = instanceIdName;
                        i++;
                    }
                }
                maxInstanceId--;
            }
            if (i != 0) {
                if (ids.length == 0 && objArr.length == i) {
                    return objArr;
                }
                Object[] objArr2 = new Object[ids.length + i];
                System.arraycopy(ids, 0, objArr2, 0, ids.length);
                System.arraycopy(objArr, 0, objArr2, ids.length, i);
                return objArr2;
            }
        }
        return ids;
    }

    public String getInstanceIdName(int i) {
        throw new IllegalArgumentException(String.valueOf(i));
    }

    public Object getInstanceIdValue(int i) {
        throw new IllegalStateException(String.valueOf(i));
    }

    public int getMaxInstanceId() {
        return 0;
    }

    @Override // org.mozilla.javascript.ScriptableObject
    public ScriptableObject getOwnPropertyDescriptor(Context context, Object obj) {
        ScriptableObject ownPropertyDescriptor = super.getOwnPropertyDescriptor(context, obj);
        if (ownPropertyDescriptor == null) {
            if (obj instanceof String) {
                return getBuiltInDataDescriptor((String) obj);
            }
            if (ScriptRuntime.isSymbol(obj)) {
                return obj instanceof SymbolKey ? getBuiltInDataDescriptor((SymbolKey) obj) : getBuiltInDataDescriptor(((NativeSymbol) obj).getKey());
            }
        }
        return ownPropertyDescriptor;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public boolean has(String str, Scriptable scriptable) {
        int findId;
        int findInstanceIdInfo = findInstanceIdInfo(str);
        if (findInstanceIdInfo == 0) {
            PrototypeValues prototypeValues = this.prototypeValues;
            return (prototypeValues == null || (findId = prototypeValues.findId(str)) == 0) ? super.has(str, scriptable) : this.prototypeValues.has(findId);
        }
        if (((findInstanceIdInfo >>> 16) & 4) != 0) {
            return true;
        }
        return Scriptable.NOT_FOUND != getInstanceIdValue(65535 & findInstanceIdInfo);
    }

    public final boolean hasPrototypeMap() {
        return this.prototypeValues != null;
    }

    public final void initPrototypeConstructor(IdFunctionObject idFunctionObject) {
        int i = this.prototypeValues.constructorId;
        if (i == 0) {
            Node$$ExternalSyntheticBUOutline0.m();
        } else {
            if (idFunctionObject.methodId() != i) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
                return;
            }
            if (isSealed()) {
                idFunctionObject.sealObject();
            }
            this.prototypeValues.initValue(i, "constructor", idFunctionObject, 2);
        }
    }

    public void initPrototypeId(int i) {
        throw new IllegalStateException(String.valueOf(i));
    }

    public final IdFunctionObject initPrototypeMethod(Object obj, int i, String str, String str2, int i2) {
        IdFunctionObject newIdFunction = newIdFunction(obj, i, str2 != null ? str2 : str, i2, ScriptableObject.getTopLevelScope(this));
        this.prototypeValues.initValue(i, str, newIdFunction, 2);
        return newIdFunction;
    }

    public final void initPrototypeValue(int i, String str, Object obj, int i2) {
        this.prototypeValues.initValue(i, str, obj, i2);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void put(String str, Scriptable scriptable, Object obj) {
        int findId;
        int findInstanceIdInfo = findInstanceIdInfo(str);
        if (findInstanceIdInfo != 0) {
            if (scriptable == this && isSealed()) {
                throw Context.reportRuntimeErrorById("msg.modify.sealed", str);
            }
            if (((findInstanceIdInfo >>> 16) & 1) == 0) {
                if (scriptable == this) {
                    setInstanceIdValue(65535 & findInstanceIdInfo, obj);
                    return;
                } else {
                    scriptable.put(str, scriptable, obj);
                    return;
                }
            }
            return;
        }
        PrototypeValues prototypeValues = this.prototypeValues;
        if (prototypeValues == null || (findId = prototypeValues.findId(str)) == 0) {
            super.put(str, scriptable, obj);
        } else {
            if (scriptable == this && isSealed()) {
                throw Context.reportRuntimeErrorById("msg.modify.sealed", str);
            }
            this.prototypeValues.set(findId, scriptable, obj);
        }
    }

    @Override // org.mozilla.javascript.ScriptableObject
    public void setAttributes(String str, int i) {
        int findId;
        ScriptableObject.checkValidAttributes(i);
        int findInstanceIdInfo = findInstanceIdInfo(str);
        if (findInstanceIdInfo != 0) {
            int i2 = 65535 & findInstanceIdInfo;
            if (i != (findInstanceIdInfo >>> 16)) {
                setInstanceIdAttributes(i2, i);
                return;
            }
            return;
        }
        PrototypeValues prototypeValues = this.prototypeValues;
        if (prototypeValues == null || (findId = prototypeValues.findId(str)) == 0) {
            super.setAttributes(str, i);
        } else {
            this.prototypeValues.setAttributes(findId, i);
        }
    }

    public void setInstanceIdAttributes(int i, int i2) {
        throw ScriptRuntime.constructError("InternalError", Owner.CC.m("Changing attributes not supported for ", getClassName(), " ", getInstanceIdName(i), " property"));
    }

    public void setInstanceIdValue(int i, Object obj) {
        throw new IllegalStateException(String.valueOf(i));
    }

    public int findInstanceIdInfo(Symbol symbol) {
        return 0;
    }

    public IdScriptableObject(Scriptable scriptable, Scriptable scriptable2) {
        super(scriptable, scriptable2);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class PrototypeValues implements Serializable {
        private static final int NAME_SLOT = 1;
        private static final int SLOT_SPAN = 2;
        private static final long serialVersionUID = 3038645279153854371L;
        private short[] attributeArray;
        private IdFunctionObject constructor;
        private short constructorAttrs;
        int constructorId;
        private int maxId;
        private IdScriptableObject obj;
        private Object[] valueArray;

        public PrototypeValues(IdScriptableObject idScriptableObject, int i) {
            if (idScriptableObject == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
                throw null;
            }
            if (i < 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
                throw null;
            }
            this.obj = idScriptableObject;
            this.maxId = i;
        }

        private Object ensureId(int i) {
            Object[] objArr = this.valueArray;
            synchronized (this) {
                if (objArr == null) {
                    try {
                        objArr = this.valueArray;
                        if (objArr == null) {
                            int i2 = this.maxId;
                            Object[] objArr2 = new Object[i2 * 2];
                            this.valueArray = objArr2;
                            this.attributeArray = new short[i2];
                            objArr = objArr2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            int i3 = (i - 1) * 2;
            Object obj = objArr[i3];
            if (obj != null) {
                return obj;
            }
            int i4 = this.constructorId;
            if (i == i4) {
                initSlot(i4, "constructor", this.constructor, this.constructorAttrs);
                this.constructor = null;
            } else {
                this.obj.initPrototypeId(i);
            }
            Object obj2 = objArr[i3];
            if (obj2 != null) {
                return obj2;
            }
            throw new IllegalStateException(this.obj.getClass().getName() + ".initPrototypeId(int id) did not initialize id=" + i);
        }

        private void initSlot(int i, Object obj, Object obj2, int i2) {
            Object[] objArr = this.valueArray;
            if (objArr == null) {
                Node$$ExternalSyntheticBUOutline0.m();
                return;
            }
            if (obj2 == null) {
                obj2 = UniqueTag.NULL_VALUE;
            }
            int i3 = i - 1;
            int i4 = i3 * 2;
            synchronized (this) {
                try {
                    if (objArr[i4] == null) {
                        objArr[i4] = obj2;
                        objArr[i4 + 1] = obj;
                        this.attributeArray[i3] = (short) i2;
                    } else if (!obj.equals(objArr[i4 + 1])) {
                        throw new IllegalStateException();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final IdFunctionObject createPrecachedConstructor() {
            if (this.constructorId != 0) {
                Node$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            int findPrototypeId = this.obj.findPrototypeId("constructor");
            this.constructorId = findPrototypeId;
            if (findPrototypeId == 0) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("No id for constructor property");
                return null;
            }
            this.obj.initPrototypeId(findPrototypeId);
            IdFunctionObject idFunctionObject = this.constructor;
            IdScriptableObject idScriptableObject = this.obj;
            if (idFunctionObject != null) {
                idFunctionObject.initFunction(idScriptableObject.getClassName(), ScriptableObject.getTopLevelScope(this.obj));
                this.constructor.markAsConstructor(this.obj);
                return this.constructor;
            }
            throw new IllegalStateException(idScriptableObject.getClass().getName() + ".initPrototypeId() did not initialize id=" + this.constructorId);
        }

        public final void delete(int i) {
            ensureId(i);
            int i2 = i - 1;
            if ((this.attributeArray[i2] & 4) != 0) {
                if (Context.getContext().isStrictMode()) {
                    throw ScriptRuntime.typeErrorById("msg.delete.property.with.configurable.false", (String) this.valueArray[(i2 * 2) + 1]);
                }
            } else {
                int i3 = i2 * 2;
                synchronized (this) {
                    this.valueArray[i3] = Scriptable.NOT_FOUND;
                    this.attributeArray[i2] = 0;
                }
            }
        }

        public final int findId(String str) {
            return this.obj.findPrototypeId(str);
        }

        public final Object get(int i) {
            Object ensureId = ensureId(i);
            if (ensureId == UniqueTag.NULL_VALUE) {
                return null;
            }
            return ensureId;
        }

        public final int getAttributes(int i) {
            ensureId(i);
            return this.attributeArray[i - 1];
        }

        public final int getMaxId() {
            return this.maxId;
        }

        public final Object[] getNames(boolean z, boolean z2, Object[] objArr) {
            int i;
            Object[] objArr2 = null;
            int i2 = 0;
            for (int i3 = 1; i3 <= this.maxId; i3++) {
                Object ensureId = ensureId(i3);
                if ((z || (this.attributeArray[i3 - 1] & 2) == 0) && ensureId != Scriptable.NOT_FOUND) {
                    Object obj = this.valueArray[((i3 - 1) * 2) + 1];
                    if (obj instanceof String) {
                        if (objArr2 == null) {
                            objArr2 = new Object[this.maxId];
                        }
                        i = i2 + 1;
                        objArr2[i2] = obj;
                    } else if (z2 && (obj instanceof Symbol)) {
                        if (objArr2 == null) {
                            objArr2 = new Object[this.maxId];
                        }
                        i = i2 + 1;
                        objArr2[i2] = obj.toString();
                    }
                    i2 = i;
                }
            }
            if (i2 == 0) {
                return objArr;
            }
            if (objArr == null || objArr.length == 0) {
                if (i2 == objArr2.length) {
                    return objArr2;
                }
                Object[] objArr3 = new Object[i2];
                System.arraycopy(objArr2, 0, objArr3, 0, i2);
                return objArr3;
            }
            int length = objArr.length;
            Object[] objArr4 = new Object[length + i2];
            System.arraycopy(objArr, 0, objArr4, 0, length);
            System.arraycopy(objArr2, 0, objArr4, length, i2);
            return objArr4;
        }

        public final boolean has(int i) {
            Object obj;
            Object[] objArr = this.valueArray;
            return objArr == null || (obj = objArr[(i - 1) * 2]) == null || obj != Scriptable.NOT_FOUND;
        }

        public final void initValue(int i, String str, Object obj, int i2) {
            if (1 > i || i > this.maxId) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
                return;
            }
            if (str == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
                return;
            }
            if (obj == Scriptable.NOT_FOUND) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
                return;
            }
            ScriptableObject.checkValidAttributes(i2);
            if (this.obj.findPrototypeId(str) != i) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(str);
                return;
            }
            if (i != this.constructorId) {
                initSlot(i, str, obj, i2);
            } else if (!(obj instanceof IdFunctionObject)) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("constructor should be initialized with IdFunctionObject");
            } else {
                this.constructor = (IdFunctionObject) obj;
                this.constructorAttrs = (short) i2;
            }
        }

        public final void set(int i, Scriptable scriptable, Object obj) {
            if (obj == Scriptable.NOT_FOUND) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
                return;
            }
            ensureId(i);
            int i2 = i - 1;
            if ((this.attributeArray[i2] & 1) == 0) {
                if (scriptable == this.obj) {
                    if (obj == null) {
                        obj = UniqueTag.NULL_VALUE;
                    }
                    int i3 = i2 * 2;
                    synchronized (this) {
                        this.valueArray[i3] = obj;
                    }
                    return;
                }
                Object obj2 = this.valueArray[(i2 * 2) + 1];
                if (!(obj2 instanceof Symbol)) {
                    scriptable.put((String) obj2, scriptable, obj);
                } else if (scriptable instanceof SymbolScriptable) {
                    ((SymbolScriptable) scriptable).put((Symbol) obj2, scriptable, obj);
                }
            }
        }

        public final void setAttributes(int i, int i2) {
            ScriptableObject.checkValidAttributes(i2);
            ensureId(i);
            synchronized (this) {
                this.attributeArray[i - 1] = (short) i2;
            }
        }

        public final int findId(Symbol symbol) {
            return this.obj.findPrototypeId(symbol);
        }

        public final void initValue(int i, Symbol symbol, Object obj, int i2) {
            if (1 > i || i > this.maxId) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
                return;
            }
            if (symbol != null) {
                if (obj != Scriptable.NOT_FOUND) {
                    ScriptableObject.checkValidAttributes(i2);
                    if (this.obj.findPrototypeId(symbol) == i) {
                        if (i == this.constructorId) {
                            if (obj instanceof IdFunctionObject) {
                                this.constructor = (IdFunctionObject) obj;
                                this.constructorAttrs = (short) i2;
                                return;
                            } else {
                                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("constructor should be initialized with IdFunctionObject");
                                return;
                            }
                        }
                        initSlot(i, symbol, obj, i2);
                        return;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1(symbol);
                    return;
                }
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
        }
    }

    public int findPrototypeId(Symbol symbol) {
        return 0;
    }

    public final void initPrototypeValue(int i, Symbol symbol, Object obj, int i2) {
        this.prototypeValues.initValue(i, symbol, obj, i2);
    }

    public void fillConstructorProperties(IdFunctionObject idFunctionObject) {
    }

    public final IdFunctionObject initPrototypeMethod(Object obj, int i, String str, int i2) {
        return initPrototypeMethod(obj, i, str, str, i2);
    }

    private ScriptableObject getBuiltInDataDescriptor(Symbol symbol) {
        Scriptable parentScope = getParentScope();
        if (parentScope == null) {
            parentScope = this;
        }
        Slot builtInSlot = getBuiltInSlot(symbol);
        if (builtInSlot == null) {
            return null;
        }
        return ScriptableObject.buildDataDescriptor(parentScope, builtInSlot.value, builtInSlot.getAttributes());
    }

    public final IdFunctionObject initPrototypeMethod(Object obj, int i, Symbol symbol, String str, int i2) {
        IdFunctionObject newIdFunction = newIdFunction(obj, i, str, i2, ScriptableObject.getTopLevelScope(this));
        this.prototypeValues.initValue(i, symbol, newIdFunction, 2);
        return newIdFunction;
    }

    @Override // org.mozilla.javascript.ScriptableObject
    public int getAttributes(Symbol symbol) {
        int findId;
        int findInstanceIdInfo = findInstanceIdInfo(symbol);
        if (findInstanceIdInfo != 0) {
            return findInstanceIdInfo >>> 16;
        }
        PrototypeValues prototypeValues = this.prototypeValues;
        if (prototypeValues != null && (findId = prototypeValues.findId(symbol)) != 0) {
            return this.prototypeValues.getAttributes(findId);
        }
        return super.getAttributes(symbol);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.SymbolScriptable
    public Object get(Symbol symbol, Scriptable scriptable) {
        int findId;
        Object obj;
        Object instanceIdValue;
        Object obj2 = super.get(symbol, scriptable);
        Object obj3 = Scriptable.NOT_FOUND;
        if (obj2 != obj3) {
            return obj2;
        }
        int findInstanceIdInfo = findInstanceIdInfo(symbol);
        if (findInstanceIdInfo != 0 && (instanceIdValue = getInstanceIdValue(findInstanceIdInfo & 65535)) != obj3) {
            return instanceIdValue;
        }
        PrototypeValues prototypeValues = this.prototypeValues;
        return (prototypeValues == null || (findId = prototypeValues.findId(symbol)) == 0 || (obj = this.prototypeValues.get(findId)) == obj3) ? obj3 : obj;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.SymbolScriptable
    public boolean has(Symbol symbol, Scriptable scriptable) {
        int findId;
        int findInstanceIdInfo = findInstanceIdInfo(symbol);
        if (findInstanceIdInfo != 0) {
            if (((findInstanceIdInfo >>> 16) & 4) != 0) {
                return true;
            }
            return Scriptable.NOT_FOUND != getInstanceIdValue(65535 & findInstanceIdInfo);
        }
        PrototypeValues prototypeValues = this.prototypeValues;
        if (prototypeValues != null && (findId = prototypeValues.findId(symbol)) != 0) {
            return this.prototypeValues.has(findId);
        }
        return super.has(symbol, scriptable);
    }

    private Slot getBuiltInSlot(Symbol symbol) {
        int findId;
        PrototypeValues prototypeValues = this.prototypeValues;
        if (prototypeValues == null || (findId = prototypeValues.findId(symbol)) == 0) {
            return null;
        }
        Object obj = this.prototypeValues.get(findId);
        Slot slot = new Slot(symbol, 0, this.prototypeValues.getAttributes(findId));
        slot.value = obj;
        return slot;
    }

    public static <T> T ensureType(Object obj, Class<T> cls, IdFunctionObject idFunctionObject) {
        return (T) ensureType(obj, cls, idFunctionObject.getFunctionName());
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.SymbolScriptable
    public void delete(Symbol symbol) {
        int findId;
        int findInstanceIdInfo = findInstanceIdInfo(symbol);
        if (findInstanceIdInfo != 0 && !isSealed()) {
            if (((findInstanceIdInfo >>> 16) & 4) != 0) {
                if (Context.getContext().isStrictMode()) {
                    throw ScriptRuntime.typeErrorById("msg.delete.property.with.configurable.false", new Object[0]);
                }
                return;
            } else {
                setInstanceIdValue(65535 & findInstanceIdInfo, Scriptable.NOT_FOUND);
                return;
            }
        }
        PrototypeValues prototypeValues = this.prototypeValues;
        if (prototypeValues != null && (findId = prototypeValues.findId(symbol)) != 0) {
            if (isSealed()) {
                return;
            }
            this.prototypeValues.delete(findId);
            return;
        }
        super.delete(symbol);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.SymbolScriptable
    public void put(Symbol symbol, Scriptable scriptable, Object obj) {
        int findId;
        int findInstanceIdInfo = findInstanceIdInfo(symbol);
        if (findInstanceIdInfo != 0) {
            if (scriptable == this && isSealed()) {
                throw Context.reportRuntimeErrorById("msg.modify.sealed", new Object[0]);
            }
            if (((findInstanceIdInfo >>> 16) & 1) == 0) {
                if (scriptable == this) {
                    setInstanceIdValue(65535 & findInstanceIdInfo, obj);
                    return;
                } else {
                    ScriptableObject.ensureSymbolScriptable(scriptable).put(symbol, scriptable, obj);
                    return;
                }
            }
            return;
        }
        PrototypeValues prototypeValues = this.prototypeValues;
        if (prototypeValues != null && (findId = prototypeValues.findId(symbol)) != 0) {
            if (scriptable == this && isSealed()) {
                throw Context.reportRuntimeErrorById("msg.modify.sealed", new Object[0]);
            }
            this.prototypeValues.set(findId, scriptable, obj);
            return;
        }
        super.put(symbol, scriptable, obj);
    }
}
