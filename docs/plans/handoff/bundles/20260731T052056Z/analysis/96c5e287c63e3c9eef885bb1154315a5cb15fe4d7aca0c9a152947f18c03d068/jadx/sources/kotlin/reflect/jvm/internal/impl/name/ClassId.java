package kotlin.reflect.jvm.internal.impl.name;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ClassId {
    public final boolean local;
    public final FqName packageFqName;
    public final FqName relativeClassName;

    /* JADX WARN: Removed duplicated region for block: B:14:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void $$$reportNull$$$0(int r10) {
        /*
            r0 = 9
            r1 = 7
            r2 = 6
            r3 = 5
            if (r10 == r3) goto L13
            if (r10 == r2) goto L13
            if (r10 == r1) goto L13
            if (r10 == r0) goto L13
            switch(r10) {
                case 13: goto L13;
                case 14: goto L13;
                case 15: goto L13;
                case 16: goto L13;
                default: goto L10;
            }
        L10:
            java.lang.String r4 = "Argument for @NotNull parameter '%s' of %s.%s must not be null"
            goto L15
        L13:
            java.lang.String r4 = "@NotNull method %s.%s must not return null"
        L15:
            r5 = 2
            if (r10 == r3) goto L23
            if (r10 == r2) goto L23
            if (r10 == r1) goto L23
            if (r10 == r0) goto L23
            switch(r10) {
                case 13: goto L23;
                case 14: goto L23;
                case 15: goto L23;
                case 16: goto L23;
                default: goto L21;
            }
        L21:
            r6 = 3
            goto L24
        L23:
            r6 = r5
        L24:
            java.lang.Object[] r6 = new java.lang.Object[r6]
            java.lang.String r7 = "kotlin/reflect/jvm/internal/impl/name/ClassId"
            r8 = 0
            switch(r10) {
                case 1: goto L4f;
                case 2: goto L4a;
                case 3: goto L4f;
                case 4: goto L44;
                case 5: goto L41;
                case 6: goto L41;
                case 7: goto L41;
                case 8: goto L3c;
                case 9: goto L41;
                case 10: goto L37;
                case 11: goto L32;
                case 12: goto L32;
                case 13: goto L41;
                case 14: goto L41;
                case 15: goto L41;
                case 16: goto L41;
                default: goto L2c;
            }
        L2c:
            java.lang.String r9 = "topLevelFqName"
            r6[r8] = r9
            goto L53
        L32:
            java.lang.String r9 = "string"
            r6[r8] = r9
            goto L53
        L37:
            java.lang.String r9 = "segment"
            r6[r8] = r9
            goto L53
        L3c:
            java.lang.String r9 = "name"
            r6[r8] = r9
            goto L53
        L41:
            r6[r8] = r7
            goto L53
        L44:
            java.lang.String r9 = "topLevelName"
            r6[r8] = r9
            goto L53
        L4a:
            java.lang.String r9 = "relativeClassName"
            r6[r8] = r9
            goto L53
        L4f:
            java.lang.String r9 = "packageFqName"
            r6[r8] = r9
        L53:
            r8 = 1
            if (r10 == r3) goto L7b
            if (r10 == r2) goto L76
            if (r10 == r1) goto L71
            if (r10 == r0) goto L6c
            switch(r10) {
                case 13: goto L67;
                case 14: goto L67;
                case 15: goto L62;
                case 16: goto L62;
                default: goto L5f;
            }
        L5f:
            r6[r8] = r7
            goto L7f
        L62:
            java.lang.String r7 = "asFqNameString"
            r6[r8] = r7
            goto L7f
        L67:
            java.lang.String r7 = "asString"
            r6[r8] = r7
            goto L7f
        L6c:
            java.lang.String r7 = "asSingleFqName"
            r6[r8] = r7
            goto L7f
        L71:
            java.lang.String r7 = "getShortClassName"
            r6[r8] = r7
            goto L7f
        L76:
            java.lang.String r7 = "getRelativeClassName"
            r6[r8] = r7
            goto L7f
        L7b:
            java.lang.String r7 = "getPackageFqName"
            r6[r8] = r7
        L7f:
            switch(r10) {
                case 1: goto L97;
                case 2: goto L97;
                case 3: goto L97;
                case 4: goto L97;
                case 5: goto L9b;
                case 6: goto L9b;
                case 7: goto L9b;
                case 8: goto L92;
                case 9: goto L9b;
                case 10: goto L8d;
                case 11: goto L88;
                case 12: goto L88;
                case 13: goto L9b;
                case 14: goto L9b;
                case 15: goto L9b;
                case 16: goto L9b;
                default: goto L82;
            }
        L82:
            java.lang.String r7 = "topLevel"
            r6[r5] = r7
            goto L9b
        L88:
            java.lang.String r7 = "fromString"
            r6[r5] = r7
            goto L9b
        L8d:
            java.lang.String r7 = "startsWith"
            r6[r5] = r7
            goto L9b
        L92:
            java.lang.String r7 = "createNestedClassId"
            r6[r5] = r7
            goto L9b
        L97:
            java.lang.String r7 = "<init>"
            r6[r5] = r7
        L9b:
            java.lang.String r4 = java.lang.String.format(r4, r6)
            if (r10 == r3) goto Lb0
            if (r10 == r2) goto Lb0
            if (r10 == r1) goto Lb0
            if (r10 == r0) goto Lb0
            switch(r10) {
                case 13: goto Lb0;
                case 14: goto Lb0;
                case 15: goto Lb0;
                case 16: goto Lb0;
                default: goto Laa;
            }
        Laa:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            r10.<init>(r4)
            goto Lb5
        Lb0:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            r10.<init>(r4)
        Lb5:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.name.ClassId.$$$reportNull$$$0(int):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ClassId(FqName fqName, Name name) {
        this(fqName, FqName.topLevel(name), false);
        if (fqName == null) {
            $$$reportNull$$$0(3);
            throw null;
        }
        if (name != null) {
        } else {
            $$$reportNull$$$0(4);
            throw null;
        }
    }

    public static ClassId fromString(String str, boolean z) {
        String str2;
        if (str == null) {
            $$$reportNull$$$0(12);
            throw null;
        }
        int lastIndexOf = str.lastIndexOf("/");
        if (lastIndexOf == -1) {
            str2 = "";
        } else {
            String replace = str.substring(0, lastIndexOf).replace('/', '.');
            str = str.substring(lastIndexOf + 1);
            str2 = replace;
        }
        return new ClassId(new FqName(str2), new FqName(str), z);
    }

    public static ClassId topLevel(FqName fqName) {
        if (fqName != null) {
            return new ClassId(fqName.parent(), fqName.shortName());
        }
        $$$reportNull$$$0(0);
        throw null;
    }

    public final FqName asSingleFqName() {
        FqName fqName = this.packageFqName;
        boolean isRoot = fqName.isRoot();
        FqName fqName2 = this.relativeClassName;
        if (isRoot) {
            if (fqName2 != null) {
                return fqName2;
            }
            $$$reportNull$$$0(9);
            throw null;
        }
        return new FqName(fqName.asString() + "." + fqName2.asString());
    }

    public final String asString() {
        FqName fqName = this.packageFqName;
        boolean isRoot = fqName.isRoot();
        FqName fqName2 = this.relativeClassName;
        if (isRoot) {
            return fqName2.asString();
        }
        return fqName.asString().replace('.', '/') + "/" + fqName2.asString();
    }

    public final ClassId createNestedClassId(Name name) {
        if (name != null) {
            return new ClassId(getPackageFqName(), this.relativeClassName.child(name), this.local);
        }
        $$$reportNull$$$0(8);
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ClassId.class == obj.getClass()) {
            ClassId classId = (ClassId) obj;
            if (this.packageFqName.equals(classId.packageFqName) && this.relativeClassName.equals(classId.relativeClassName) && this.local == classId.local) {
                return true;
            }
        }
        return false;
    }

    public final ClassId getOuterClassId() {
        FqName parent = this.relativeClassName.parent();
        if (parent.isRoot()) {
            return null;
        }
        return new ClassId(getPackageFqName(), parent, this.local);
    }

    public final FqName getPackageFqName() {
        FqName fqName = this.packageFqName;
        if (fqName != null) {
            return fqName;
        }
        $$$reportNull$$$0(5);
        throw null;
    }

    public final FqName getRelativeClassName() {
        FqName fqName = this.relativeClassName;
        if (fqName != null) {
            return fqName;
        }
        $$$reportNull$$$0(6);
        throw null;
    }

    public final Name getShortClassName() {
        Name shortName = this.relativeClassName.shortName();
        if (shortName != null) {
            return shortName;
        }
        $$$reportNull$$$0(7);
        throw null;
    }

    public final int hashCode() {
        return Boolean.valueOf(this.local).hashCode() + ((this.relativeClassName.hashCode() + (this.packageFqName.hashCode() * 31)) * 31);
    }

    public final String toString() {
        boolean isRoot = this.packageFqName.isRoot();
        String asString = asString();
        return isRoot ? "/".concat(asString) : asString;
    }

    public ClassId(FqName fqName, FqName fqName2, boolean z) {
        if (fqName != null) {
            this.packageFqName = fqName;
            this.relativeClassName = fqName2;
            this.local = z;
            return;
        }
        $$$reportNull$$$0(1);
        throw null;
    }
}
