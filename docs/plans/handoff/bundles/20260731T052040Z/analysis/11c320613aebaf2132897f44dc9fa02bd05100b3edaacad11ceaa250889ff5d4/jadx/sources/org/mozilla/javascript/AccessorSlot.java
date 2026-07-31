package org.mozilla.javascript;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class AccessorSlot extends Slot {
    private static final long serialVersionUID = 1677840254177335827L;
    transient Getter getter;
    transient Setter setter;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class FunctionGetter implements Getter {
        final Object target;

        public FunctionGetter(Object obj) {
            this.target = obj;
        }

        @Override // org.mozilla.javascript.AccessorSlot.Getter
        public Function asGetterFunction(String str, Scriptable scriptable) {
            Object obj = this.target;
            if (obj instanceof Function) {
                return (Function) obj;
            }
            return null;
        }

        @Override // org.mozilla.javascript.AccessorSlot.Getter
        public Object getValue(Scriptable scriptable) {
            Object obj = this.target;
            if (!(obj instanceof Function)) {
                return Undefined.instance;
            }
            Function function = (Function) obj;
            return function.call(Context.getContext(), function.getParentScope(), scriptable, ScriptRuntime.emptyArgs);
        }

        @Override // org.mozilla.javascript.AccessorSlot.Getter
        public boolean isSameGetterFunction(Object obj) {
            Object obj2 = this.target;
            return ScriptRuntime.shallowEq(obj2 instanceof Function ? (Function) obj2 : Undefined.instance, obj);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class FunctionSetter implements Setter {
        final Object target;

        public FunctionSetter(Object obj) {
            this.target = obj;
        }

        @Override // org.mozilla.javascript.AccessorSlot.Setter
        public Function asSetterFunction(String str, Scriptable scriptable) {
            Object obj = this.target;
            if (obj instanceof Function) {
                return (Function) obj;
            }
            return null;
        }

        @Override // org.mozilla.javascript.AccessorSlot.Setter
        public boolean isSameSetterFunction(Object obj) {
            Object obj2 = this.target;
            return ScriptRuntime.shallowEq(obj2 instanceof Function ? (Function) obj2 : Undefined.instance, obj);
        }

        @Override // org.mozilla.javascript.AccessorSlot.Setter
        public boolean setValue(Object obj, Scriptable scriptable, Scriptable scriptable2) {
            Object obj2 = this.target;
            if (obj2 instanceof Function) {
                Function function = (Function) obj2;
                function.call(Context.getContext(), function.getParentScope(), scriptable2, new Object[]{obj});
            }
            return true;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface Getter {
        Function asGetterFunction(String str, Scriptable scriptable);

        Object getValue(Scriptable scriptable);

        boolean isSameGetterFunction(Object obj);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class MemberBoxGetter implements Getter {
        final MemberBox member;

        public MemberBoxGetter(MemberBox memberBox) {
            this.member = memberBox;
        }

        @Override // org.mozilla.javascript.AccessorSlot.Getter
        public Function asGetterFunction(String str, Scriptable scriptable) {
            return this.member.asGetterFunction(str, scriptable);
        }

        @Override // org.mozilla.javascript.AccessorSlot.Getter
        public Object getValue(Scriptable scriptable) {
            MemberBox memberBox = this.member;
            Object obj = memberBox.delegateTo;
            return obj == null ? memberBox.invoke(scriptable, ScriptRuntime.emptyArgs) : memberBox.invoke(obj, new Object[]{scriptable});
        }

        @Override // org.mozilla.javascript.AccessorSlot.Getter
        public boolean isSameGetterFunction(Object obj) {
            return this.member.isSameGetterFunction(obj);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class MemberBoxSetter implements Setter {
        final MemberBox member;

        public MemberBoxSetter(MemberBox memberBox) {
            this.member = memberBox;
        }

        @Override // org.mozilla.javascript.AccessorSlot.Setter
        public Function asSetterFunction(String str, Scriptable scriptable) {
            return this.member.asSetterFunction(str, scriptable);
        }

        @Override // org.mozilla.javascript.AccessorSlot.Setter
        public boolean isSameSetterFunction(Object obj) {
            return this.member.isSameSetterFunction(obj);
        }

        @Override // org.mozilla.javascript.AccessorSlot.Setter
        public boolean setValue(Object obj, Scriptable scriptable, Scriptable scriptable2) {
            Context context = Context.getContext();
            Class<?>[] clsArr = this.member.argTypes;
            Object convertArg = FunctionObject.convertArg(context, scriptable2, obj, FunctionObject.getTypeTag(clsArr[clsArr.length - 1]));
            MemberBox memberBox = this.member;
            Object obj2 = memberBox.delegateTo;
            if (obj2 == null) {
                memberBox.invoke(scriptable2, new Object[]{convertArg});
            } else {
                memberBox.invoke(obj2, new Object[]{scriptable2, convertArg});
            }
            return true;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface Setter {
        Function asSetterFunction(String str, Scriptable scriptable);

        boolean isSameSetterFunction(Object obj);

        boolean setValue(Object obj, Scriptable scriptable, Scriptable scriptable2);
    }

    public AccessorSlot(Object obj, int i) {
        super(obj, i, 0);
    }

    @Override // org.mozilla.javascript.Slot
    public AccessorSlot copySlot() {
        AccessorSlot accessorSlot = new AccessorSlot(this);
        accessorSlot.value = this.value;
        accessorSlot.getter = this.getter;
        accessorSlot.setter = this.setter;
        accessorSlot.next = null;
        accessorSlot.orderedNext = null;
        return accessorSlot;
    }

    @Override // org.mozilla.javascript.Slot
    public Function getGetterFunction(String str, Scriptable scriptable) {
        Getter getter = this.getter;
        if (getter == null) {
            return null;
        }
        return getter.asGetterFunction(str, scriptable);
    }

    @Override // org.mozilla.javascript.Slot
    public ScriptableObject getPropertyDescriptor(Context context, Scriptable scriptable) {
        ScriptableObject scriptableObject = (ScriptableObject) context.newObject(scriptable);
        int attributes = getAttributes();
        boolean z = context.getLanguageVersion() >= 200;
        Getter getter = this.getter;
        if (!z) {
            scriptableObject.setCommonDescriptorProperties(attributes, getter == null && this.setter == null);
        } else if (getter == null && this.setter == null) {
            scriptableObject.defineProperty("writable", Boolean.valueOf((attributes & 1) == 0), 0);
        }
        Object obj = this.name;
        String obj2 = obj == null ? "f" : obj.toString();
        Getter getter2 = this.getter;
        if (getter2 != null) {
            Object asGetterFunction = getter2.asGetterFunction(obj2, scriptable);
            if (asGetterFunction == null) {
                asGetterFunction = Undefined.instance;
            }
            scriptableObject.defineProperty("get", asGetterFunction, 0);
        }
        Setter setter = this.setter;
        if (setter != null) {
            Object asSetterFunction = setter.asSetterFunction(obj2, scriptable);
            if (asSetterFunction == null) {
                asSetterFunction = Undefined.instance;
            }
            scriptableObject.defineProperty("set", asSetterFunction, 0);
        } else if (z) {
            scriptableObject.defineProperty("set", Undefined.instance, 0);
        }
        if (z) {
            scriptableObject.defineProperty("enumerable", Boolean.valueOf((attributes & 2) == 0), 0);
            scriptableObject.defineProperty("configurable", Boolean.valueOf((attributes & 4) == 0), 0);
        }
        return scriptableObject;
    }

    @Override // org.mozilla.javascript.Slot
    public Function getSetterFunction(String str, Scriptable scriptable) {
        Setter setter = this.setter;
        if (setter == null) {
            return null;
        }
        return setter.asSetterFunction(str, scriptable);
    }

    @Override // org.mozilla.javascript.Slot
    public Object getValue(Scriptable scriptable) {
        Getter getter = this.getter;
        return getter != null ? getter.getValue(scriptable) : super.getValue(scriptable);
    }

    @Override // org.mozilla.javascript.Slot
    public boolean isSameGetterFunction(Object obj) {
        if (obj == Scriptable.NOT_FOUND) {
            return true;
        }
        Getter getter = this.getter;
        return getter == null ? ScriptRuntime.shallowEq(Undefined.instance, obj) : getter.isSameGetterFunction(obj);
    }

    @Override // org.mozilla.javascript.Slot
    public boolean isSameSetterFunction(Object obj) {
        if (obj == Scriptable.NOT_FOUND) {
            return true;
        }
        Setter setter = this.setter;
        return setter == null ? ScriptRuntime.shallowEq(Undefined.instance, obj) : setter.isSameSetterFunction(obj);
    }

    @Override // org.mozilla.javascript.Slot
    public boolean isSetterSlot() {
        return true;
    }

    @Override // org.mozilla.javascript.Slot
    public boolean isValueSlot() {
        return false;
    }

    @Override // org.mozilla.javascript.Slot
    public boolean setValue(Object obj, Scriptable scriptable, Scriptable scriptable2, boolean z) {
        Setter setter = this.setter;
        if (setter != null) {
            return setter.setValue(obj, scriptable, scriptable2);
        }
        if (this.getter == null) {
            return super.setValue(obj, scriptable, scriptable2, z);
        }
        throwNoSetterException(scriptable2, obj);
        return true;
    }

    public AccessorSlot(Slot slot) {
        super(slot);
    }
}
