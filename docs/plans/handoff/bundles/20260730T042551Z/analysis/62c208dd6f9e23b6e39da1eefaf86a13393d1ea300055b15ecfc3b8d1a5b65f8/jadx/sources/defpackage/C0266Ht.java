package defpackage;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

/* renamed from: Ht, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0266Ht {

    /* renamed from: do, reason: not valid java name */
    public static final HashSet f1407do = new HashSet();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final boolean f1408do;

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003f, code lost:
    
        if (r1 < 1) goto L19;
     */
    static {
        /*
            java.util.HashSet r0 = new java.util.HashSet
            r0.<init>()
            defpackage.C0266Ht.f1407do = r0
            java.lang.String r0 = "java.vm.version"
            java.lang.String r0 = java.lang.System.getProperty(r0)
            if (r0 == 0) goto L42
            java.util.StringTokenizer r1 = new java.util.StringTokenizer
            java.lang.String r2 = "."
            r1.<init>(r0, r2)
            boolean r0 = r1.hasMoreTokens()
            r2 = 0
            if (r0 == 0) goto L22
            java.lang.String r0 = r1.nextToken()
            goto L23
        L22:
            r0 = r2
        L23:
            boolean r3 = r1.hasMoreTokens()
            if (r3 == 0) goto L2d
            java.lang.String r2 = r1.nextToken()
        L2d:
            if (r0 == 0) goto L42
            if (r2 == 0) goto L42
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.NumberFormatException -> L42
            int r1 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.NumberFormatException -> L42
            r2 = 1
            r3 = 2
            if (r0 > r3) goto L43
            if (r0 != r3) goto L42
            if (r1 < r2) goto L42
            goto L43
        L42:
            r2 = 0
        L43:
            defpackage.C0266Ht.f1408do = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0266Ht.<clinit>():void");
    }

    /* renamed from: do, reason: not valid java name */
    public static void m889do(Context context) {
        File file = new File(context.getFilesDir(), "secondary-dexes");
        if (file.isDirectory()) {
            file.getPath();
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                file.getPath();
                return;
            }
            for (File file2 : listFiles) {
                file2.getPath();
                file2.length();
                if (file2.delete()) {
                    file2.getPath();
                } else {
                    file2.getPath();
                }
            }
            if (file.delete()) {
                file.getPath();
            } else {
                file.getPath();
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static Field m890for(Object obj, String str) {
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException unused) {
            }
        }
        StringBuilder m2493break = V1.m2493break("Field ", str, " not found in ");
        m2493break.append(obj.getClass());
        throw new NoSuchFieldException(m2493break.toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0023 A[Catch: all -> 0x006d, DONT_GENERATE, TRY_LEAVE, TryCatch #6 {, blocks: (B:4:0x0005, B:6:0x000b, B:9:0x000d, B:12:0x0016, B:13:0x001a, B:17:0x0023, B:21:0x0028, B:23:0x002f, B:24:0x003f, B:32:0x005f, B:34:0x0066, B:36:0x0068, B:44:0x0069, B:45:0x006c, B:49:0x0033, B:27:0x004d, B:29:0x0051, B:40:0x0058), top: B:3:0x0005, inners: #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0025 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m891if(android.content.Context r6, java.io.File r7, java.io.File r8) {
        /*
            java.lang.String r0 = "secondary-dexes"
            java.util.HashSet r1 = defpackage.C0266Ht.f1407do
            monitor-enter(r1)
            boolean r2 = r1.contains(r7)     // Catch: java.lang.Throwable -> L6d
            if (r2 == 0) goto Ld
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L6d
            return
        Ld:
            r1.add(r7)     // Catch: java.lang.Throwable -> L6d
            java.lang.String r2 = "java.vm.version"
            java.lang.System.getProperty(r2)     // Catch: java.lang.Throwable -> L6d
            r2 = 0
            java.lang.ClassLoader r3 = r6.getClassLoader()     // Catch: java.lang.RuntimeException -> L1f java.lang.Throwable -> L6d
            boolean r4 = r3 instanceof dalvik.system.BaseDexClassLoader     // Catch: java.lang.Throwable -> L6d
            if (r4 == 0) goto L20
            goto L21
        L1f:
        L20:
            r3 = r2
        L21:
            if (r3 != 0) goto L25
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L6d
            return
        L25:
            m889do(r6)     // Catch: java.lang.Throwable -> L28
        L28:
            java.io.File r4 = new java.io.File     // Catch: java.lang.Throwable -> L6d
            java.lang.String r5 = "code_cache"
            r4.<init>(r8, r5)     // Catch: java.lang.Throwable -> L6d
            m893try(r4)     // Catch: java.io.IOException -> L33 java.lang.Throwable -> L6d
            goto L3f
        L33:
            java.io.File r4 = new java.io.File     // Catch: java.lang.Throwable -> L6d
            java.io.File r8 = r6.getFilesDir()     // Catch: java.lang.Throwable -> L6d
            r4.<init>(r8, r5)     // Catch: java.lang.Throwable -> L6d
            m893try(r4)     // Catch: java.lang.Throwable -> L6d
        L3f:
            java.io.File r8 = new java.io.File     // Catch: java.lang.Throwable -> L6d
            r8.<init>(r4, r0)     // Catch: java.lang.Throwable -> L6d
            m893try(r8)     // Catch: java.lang.Throwable -> L6d
            Jt r0 = new Jt     // Catch: java.lang.Throwable -> L6d
            r0.<init>(r7, r8)     // Catch: java.lang.Throwable -> L6d
            r7 = 0
            java.util.ArrayList r7 = r0.m1083for(r6, r7)     // Catch: java.lang.Throwable -> L55
            m892new(r8, r3, r7)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            goto L5f
        L55:
            r6 = move-exception
            goto L69
        L57:
            r7 = 1
            java.util.ArrayList r6 = r0.m1083for(r6, r7)     // Catch: java.lang.Throwable -> L55
            m892new(r8, r3, r6)     // Catch: java.lang.Throwable -> L55
        L5f:
            r0.close()     // Catch: java.io.IOException -> L63 java.lang.Throwable -> L6d
            goto L64
        L63:
            r2 = move-exception
        L64:
            if (r2 != 0) goto L68
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L6d
            return
        L68:
            throw r2     // Catch: java.lang.Throwable -> L6d
        L69:
            r0.close()     // Catch: java.io.IOException -> L6c java.lang.Throwable -> L6d
        L6c:
            throw r6     // Catch: java.lang.Throwable -> L6d
        L6d:
            r6 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L6d
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0266Ht.m891if(android.content.Context, java.io.File, java.io.File):void");
    }

    /* renamed from: new, reason: not valid java name */
    public static void m892new(File file, ClassLoader classLoader, ArrayList arrayList) {
        IOException[] iOExceptionArr;
        if (arrayList.isEmpty()) {
            return;
        }
        Object obj = m890for(classLoader, "pathList").get(classLoader);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList(arrayList);
        Class<?>[] clsArr = {ArrayList.class, File.class, ArrayList.class};
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            try {
                Method declaredMethod = cls.getDeclaredMethod("makeDexElements", clsArr);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                Object[] objArr = (Object[]) declaredMethod.invoke(obj, arrayList3, file, arrayList2);
                Field m890for = m890for(obj, "dexElements");
                Object[] objArr2 = (Object[]) m890for.get(obj);
                Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
                System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
                System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
                m890for.set(obj, objArr3);
                if (arrayList2.size() > 0) {
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                    }
                    Field m890for2 = m890for(obj, "dexElementsSuppressedExceptions");
                    IOException[] iOExceptionArr2 = (IOException[]) m890for2.get(obj);
                    if (iOExceptionArr2 == null) {
                        iOExceptionArr = (IOException[]) arrayList2.toArray(new IOException[arrayList2.size()]);
                    } else {
                        IOException[] iOExceptionArr3 = new IOException[arrayList2.size() + iOExceptionArr2.length];
                        arrayList2.toArray(iOExceptionArr3);
                        System.arraycopy(iOExceptionArr2, 0, iOExceptionArr3, arrayList2.size(), iOExceptionArr2.length);
                        iOExceptionArr = iOExceptionArr3;
                    }
                    m890for2.set(obj, iOExceptionArr);
                    IOException iOException = new IOException("I/O exception during makeDexElement");
                    iOException.initCause((Throwable) arrayList2.get(0));
                    throw iOException;
                }
                return;
            } catch (NoSuchMethodException unused) {
            }
        }
        throw new NoSuchMethodException("Method makeDexElements with parameters " + Arrays.asList(clsArr) + " not found in " + obj.getClass());
    }

    /* renamed from: try, reason: not valid java name */
    public static void m893try(File file) {
        file.mkdir();
        if (file.isDirectory()) {
            return;
        }
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            file.getPath();
        } else {
            file.getPath();
            parentFile.isDirectory();
            parentFile.isFile();
            parentFile.exists();
            parentFile.canRead();
            parentFile.canWrite();
        }
        throw new IOException("Failed to create directory " + file.getPath());
    }
}
