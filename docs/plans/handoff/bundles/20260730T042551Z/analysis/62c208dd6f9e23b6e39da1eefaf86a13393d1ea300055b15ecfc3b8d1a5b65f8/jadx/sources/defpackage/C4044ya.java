package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;

/* renamed from: ya, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C4044ya {

    /* renamed from: do, reason: not valid java name */
    public float f16795do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f16796do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f16797do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f16798do;

    /* renamed from: for, reason: not valid java name */
    public int f16799for;

    /* renamed from: if, reason: not valid java name */
    public int f16800if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public String f16801if;

    public C4044ya(String str, int i, Object obj) {
        this.f16797do = str;
        this.f16796do = i;
        m8754goto(obj);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m8749case(View view, HashMap<String, C4044ya> hashMap) {
        Class<?> cls = view.getClass();
        for (String str : hashMap.keySet()) {
            C4044ya c4044ya = hashMap.get(str);
            String m8824for = C4122zt.m8824for("set", str);
            try {
                switch (C4122zt.m8819catch(c4044ya.f16796do)) {
                    case 0:
                        cls.getMethod(m8824for, Integer.TYPE).invoke(view, Integer.valueOf(c4044ya.f16800if));
                        break;
                    case 1:
                        cls.getMethod(m8824for, Float.TYPE).invoke(view, Float.valueOf(c4044ya.f16795do));
                        break;
                    case 2:
                        cls.getMethod(m8824for, Integer.TYPE).invoke(view, Integer.valueOf(c4044ya.f16799for));
                        break;
                    case 3:
                        Method method = cls.getMethod(m8824for, Drawable.class);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(c4044ya.f16799for);
                        method.invoke(view, colorDrawable);
                        break;
                    case 4:
                        cls.getMethod(m8824for, CharSequence.class).invoke(view, c4044ya.f16801if);
                        break;
                    case 5:
                        cls.getMethod(m8824for, Boolean.TYPE).invoke(view, Boolean.valueOf(c4044ya.f16798do));
                        break;
                    case 6:
                        cls.getMethod(m8824for, Float.TYPE).invoke(view, Float.valueOf(c4044ya.f16795do));
                        break;
                }
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (NoSuchMethodException e2) {
                e2.getMessage();
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static int m8750do(int i) {
        int i2 = (i & (~(i >> 31))) - 255;
        return (i2 & (i2 >> 31)) + 255;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m8751try(Context context, XmlResourceParser xmlResourceParser, HashMap hashMap) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), O2.A);
        int indexCount = obtainStyledAttributes.getIndexCount();
        String str = null;
        Object obj = null;
        int i = 0;
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = obtainStyledAttributes.getIndex(i2);
            if (index == 0) {
                str = obtainStyledAttributes.getString(index);
                if (str != null && str.length() > 0) {
                    str = Character.toUpperCase(str.charAt(0)) + str.substring(1);
                }
            } else if (index == 1) {
                obj = Boolean.valueOf(obtainStyledAttributes.getBoolean(index, false));
                i = 6;
            } else if (index == 3) {
                obj = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                i = 3;
            } else if (index == 2) {
                obj = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                i = 4;
            } else {
                if (index == 7) {
                    obj = Float.valueOf(TypedValue.applyDimension(1, obtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                } else if (index == 4) {
                    obj = Float.valueOf(obtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == 5) {
                    obj = Float.valueOf(obtainStyledAttributes.getFloat(index, Float.NaN));
                    i = 2;
                } else if (index == 6) {
                    obj = Integer.valueOf(obtainStyledAttributes.getInteger(index, -1));
                    i = 1;
                } else if (index == 8) {
                    obj = obtainStyledAttributes.getString(index);
                    i = 5;
                }
                i = 7;
            }
        }
        if (str != null && obj != null) {
            hashMap.put(str, new C4044ya(str, i, obj));
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: else, reason: not valid java name */
    public final void m8752else(float[] fArr, View view) {
        Class<?> cls = view.getClass();
        StringBuilder sb = new StringBuilder("set");
        String str = this.f16797do;
        sb.append(str);
        String sb2 = sb.toString();
        try {
            boolean z = true;
            switch (C4122zt.m8819catch(this.f16796do)) {
                case 0:
                    cls.getMethod(sb2, Integer.TYPE).invoke(view, Integer.valueOf((int) fArr[0]));
                    return;
                case 1:
                    cls.getMethod(sb2, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                    return;
                case 2:
                    cls.getMethod(sb2, Integer.TYPE).invoke(view, Integer.valueOf((m8750do((int) (fArr[3] * 255.0f)) << 24) | (m8750do((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (m8750do((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | m8750do((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f))));
                    return;
                case 3:
                    Method method = cls.getMethod(sb2, Drawable.class);
                    int m8750do = (m8750do((int) (fArr[3] * 255.0f)) << 24) | (m8750do((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (m8750do((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | m8750do((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f));
                    ColorDrawable colorDrawable = new ColorDrawable();
                    colorDrawable.setColor(m8750do);
                    method.invoke(view, colorDrawable);
                    return;
                case 4:
                    throw new RuntimeException("unable to interpolate strings " + str);
                case 5:
                    Method method2 = cls.getMethod(sb2, Boolean.TYPE);
                    Object[] objArr = new Object[1];
                    if (fArr[0] <= 0.5f) {
                        z = false;
                    }
                    objArr[0] = Boolean.valueOf(z);
                    method2.invoke(view, objArr);
                    return;
                case 6:
                    cls.getMethod(sb2, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                    return;
                default:
                    return;
            }
        } catch (IllegalAccessException e) {
            C0701ad.m3138for(view);
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            C0701ad.m3138for(view);
            e2.printStackTrace();
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m8753for(float[] fArr) {
        switch (C4122zt.m8819catch(this.f16796do)) {
            case 0:
                fArr[0] = this.f16800if;
                return;
            case 1:
                fArr[0] = this.f16795do;
                return;
            case 2:
            case 3:
                int i = (this.f16799for >> 24) & 255;
                float pow = (float) Math.pow(((r0 >> 16) & 255) / 255.0f, 2.2d);
                float pow2 = (float) Math.pow(((r0 >> 8) & 255) / 255.0f, 2.2d);
                float pow3 = (float) Math.pow((r0 & 255) / 255.0f, 2.2d);
                fArr[0] = pow;
                fArr[1] = pow2;
                fArr[2] = pow3;
                fArr[3] = i / 255.0f;
                return;
            case 4:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 5:
                fArr[0] = this.f16798do ? 0.0f : 1.0f;
                return;
            case 6:
                fArr[0] = this.f16795do;
                return;
            default:
                return;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m8754goto(Object obj) {
        switch (C4122zt.m8819catch(this.f16796do)) {
            case 0:
                this.f16800if = ((Integer) obj).intValue();
                break;
            case 1:
                this.f16795do = ((Float) obj).floatValue();
                break;
            case 2:
            case 3:
                this.f16799for = ((Integer) obj).intValue();
                break;
            case 4:
                this.f16801if = (String) obj;
                break;
            case 5:
                this.f16798do = ((Boolean) obj).booleanValue();
                break;
            case 6:
                this.f16795do = ((Float) obj).floatValue();
                break;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final float m8755if() {
        switch (C4122zt.m8819catch(this.f16796do)) {
            case 0:
                return this.f16800if;
            case 1:
                return this.f16795do;
            case 2:
            case 3:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 4:
                throw new RuntimeException("Cannot interpolate String");
            case 5:
                return this.f16798do ? 0.0f : 1.0f;
            case 6:
                return this.f16795do;
            default:
                return Float.NaN;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final int m8756new() {
        int m8819catch = C4122zt.m8819catch(this.f16796do);
        return (m8819catch == 2 || m8819catch == 3) ? 4 : 1;
    }

    public C4044ya(C4044ya c4044ya, Object obj) {
        this.f16797do = c4044ya.f16797do;
        this.f16796do = c4044ya.f16796do;
        m8754goto(obj);
    }
}
