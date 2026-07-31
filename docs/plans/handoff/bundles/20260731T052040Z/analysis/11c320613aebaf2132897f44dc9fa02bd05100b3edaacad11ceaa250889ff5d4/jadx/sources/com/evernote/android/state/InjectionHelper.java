package com.evernote.android.state;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.compose.ui.node.Owner;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Map;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class InjectionHelper {
    private final String mBaseKey;
    private final Map<String, Bundler<?>> mBundlers;

    public InjectionHelper(String str, Map<String, Bundler<?>> map) {
        this.mBaseKey = str;
        this.mBundlers = map;
    }

    public boolean getBoolean(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getBoolean(m.toString());
    }

    public boolean[] getBooleanArray(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getBooleanArray(m.toString());
    }

    public Boolean getBoxedBoolean(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        if (!bundle.containsKey(m.toString())) {
            return null;
        }
        StringBuilder m2 = Owner.CC.m(str);
        m2.append(this.mBaseKey);
        return Boolean.valueOf(bundle.getBoolean(m2.toString()));
    }

    public Byte getBoxedByte(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        if (!bundle.containsKey(m.toString())) {
            return null;
        }
        StringBuilder m2 = Owner.CC.m(str);
        m2.append(this.mBaseKey);
        return Byte.valueOf(bundle.getByte(m2.toString()));
    }

    public Character getBoxedChar(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        if (!bundle.containsKey(m.toString())) {
            return null;
        }
        StringBuilder m2 = Owner.CC.m(str);
        m2.append(this.mBaseKey);
        return Character.valueOf(bundle.getChar(m2.toString()));
    }

    public Double getBoxedDouble(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        if (!bundle.containsKey(m.toString())) {
            return null;
        }
        StringBuilder m2 = Owner.CC.m(str);
        m2.append(this.mBaseKey);
        return Double.valueOf(bundle.getDouble(m2.toString()));
    }

    public Float getBoxedFloat(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        if (!bundle.containsKey(m.toString())) {
            return null;
        }
        StringBuilder m2 = Owner.CC.m(str);
        m2.append(this.mBaseKey);
        return Float.valueOf(bundle.getFloat(m2.toString()));
    }

    public Integer getBoxedInt(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        if (!bundle.containsKey(m.toString())) {
            return null;
        }
        StringBuilder m2 = Owner.CC.m(str);
        m2.append(this.mBaseKey);
        return Integer.valueOf(bundle.getInt(m2.toString()));
    }

    public Long getBoxedLong(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        if (!bundle.containsKey(m.toString())) {
            return null;
        }
        StringBuilder m2 = Owner.CC.m(str);
        m2.append(this.mBaseKey);
        return Long.valueOf(bundle.getLong(m2.toString()));
    }

    public Short getBoxedShort(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        if (!bundle.containsKey(m.toString())) {
            return null;
        }
        StringBuilder m2 = Owner.CC.m(str);
        m2.append(this.mBaseKey);
        return Short.valueOf(bundle.getShort(m2.toString()));
    }

    public Bundle getBundle(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getBundle(m.toString());
    }

    public byte getByte(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getByte(m.toString());
    }

    public byte[] getByteArray(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getByteArray(m.toString());
    }

    public char getChar(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getChar(m.toString());
    }

    public char[] getCharArray(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getCharArray(m.toString());
    }

    public CharSequence getCharSequence(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getCharSequence(m.toString());
    }

    public CharSequence[] getCharSequenceArray(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getCharSequenceArray(m.toString());
    }

    public ArrayList<CharSequence> getCharSequenceArrayList(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getCharSequenceArrayList(m.toString());
    }

    public double getDouble(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getDouble(m.toString());
    }

    public double[] getDoubleArray(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getDoubleArray(m.toString());
    }

    public float getFloat(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getFloat(m.toString());
    }

    public float[] getFloatArray(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getFloatArray(m.toString());
    }

    public int getInt(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getInt(m.toString());
    }

    public int[] getIntArray(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getIntArray(m.toString());
    }

    public ArrayList<Integer> getIntegerArrayList(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getIntegerArrayList(m.toString());
    }

    public long getLong(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getLong(m.toString());
    }

    public long[] getLongArray(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getLongArray(m.toString());
    }

    public <T extends Parcelable> T getParcelable(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return (T) bundle.getParcelable(m.toString());
    }

    public Parcelable[] getParcelableArray(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getParcelableArray(m.toString());
    }

    public <T extends Parcelable> ArrayList<T> getParcelableArrayList(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getParcelableArrayList(m.toString());
    }

    public Parcelable getParent(Bundle bundle) {
        return bundle.getParcelable(this.mBaseKey + "$$SUPER");
    }

    public <T extends Serializable> T getSerializable(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return (T) bundle.getSerializable(m.toString());
    }

    public short getShort(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getShort(m.toString());
    }

    public short[] getShortArray(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getShortArray(m.toString());
    }

    public <T extends Parcelable> SparseArray<T> getSparseParcelableArray(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getSparseParcelableArray(m.toString());
    }

    public String getString(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getString(m.toString());
    }

    public String[] getStringArray(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getStringArray(m.toString());
    }

    public ArrayList<String> getStringArrayList(Bundle bundle, String str) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return bundle.getStringArrayList(m.toString());
    }

    public <T> T getWithBundler(Bundle bundle, String str) {
        Bundler<?> bundler = this.mBundlers.get(str);
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        return (T) bundler.get(m.toString(), bundle);
    }

    public void putBoolean(Bundle bundle, String str, boolean z) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putBoolean(m.toString(), z);
    }

    public void putBooleanArray(Bundle bundle, String str, boolean[] zArr) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putBooleanArray(m.toString(), zArr);
    }

    public void putBoxedBoolean(Bundle bundle, String str, Boolean bool) {
        if (bool != null) {
            StringBuilder m = Owner.CC.m(str);
            m.append(this.mBaseKey);
            bundle.putBoolean(m.toString(), bool.booleanValue());
        }
    }

    public void putBoxedByte(Bundle bundle, String str, Byte b) {
        if (b != null) {
            StringBuilder m = Owner.CC.m(str);
            m.append(this.mBaseKey);
            bundle.putByte(m.toString(), b.byteValue());
        }
    }

    public void putBoxedChar(Bundle bundle, String str, Character ch) {
        if (ch != null) {
            StringBuilder m = Owner.CC.m(str);
            m.append(this.mBaseKey);
            bundle.putChar(m.toString(), ch.charValue());
        }
    }

    public void putBoxedDouble(Bundle bundle, String str, Double d) {
        if (d != null) {
            StringBuilder m = Owner.CC.m(str);
            m.append(this.mBaseKey);
            bundle.putDouble(m.toString(), d.doubleValue());
        }
    }

    public void putBoxedFloat(Bundle bundle, String str, Float f) {
        if (f != null) {
            StringBuilder m = Owner.CC.m(str);
            m.append(this.mBaseKey);
            bundle.putFloat(m.toString(), f.floatValue());
        }
    }

    public void putBoxedInt(Bundle bundle, String str, Integer num) {
        if (num != null) {
            StringBuilder m = Owner.CC.m(str);
            m.append(this.mBaseKey);
            bundle.putInt(m.toString(), num.intValue());
        }
    }

    public void putBoxedLong(Bundle bundle, String str, Long l) {
        if (l != null) {
            StringBuilder m = Owner.CC.m(str);
            m.append(this.mBaseKey);
            bundle.putLong(m.toString(), l.longValue());
        }
    }

    public void putBoxedShort(Bundle bundle, String str, Short sh) {
        if (sh != null) {
            StringBuilder m = Owner.CC.m(str);
            m.append(this.mBaseKey);
            bundle.putShort(m.toString(), sh.shortValue());
        }
    }

    public void putBundle(Bundle bundle, String str, Bundle bundle2) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putBundle(m.toString(), bundle2);
    }

    public void putByte(Bundle bundle, String str, byte b) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putByte(m.toString(), b);
    }

    public void putByteArray(Bundle bundle, String str, byte[] bArr) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putByteArray(m.toString(), bArr);
    }

    public void putChar(Bundle bundle, String str, char c) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putChar(m.toString(), c);
    }

    public void putCharArray(Bundle bundle, String str, char[] cArr) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putCharArray(m.toString(), cArr);
    }

    public void putCharSequence(Bundle bundle, String str, CharSequence charSequence) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putCharSequence(m.toString(), charSequence);
    }

    public void putCharSequenceArray(Bundle bundle, String str, CharSequence[] charSequenceArr) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putCharSequenceArray(m.toString(), charSequenceArr);
    }

    public void putCharSequenceArrayList(Bundle bundle, String str, ArrayList<CharSequence> arrayList) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putCharSequenceArrayList(m.toString(), arrayList);
    }

    public void putDouble(Bundle bundle, String str, double d) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putDouble(m.toString(), d);
    }

    public void putDoubleArray(Bundle bundle, String str, double[] dArr) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putDoubleArray(m.toString(), dArr);
    }

    public void putFloat(Bundle bundle, String str, float f) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putFloat(m.toString(), f);
    }

    public void putFloatArray(Bundle bundle, String str, float[] fArr) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putFloatArray(m.toString(), fArr);
    }

    public void putInt(Bundle bundle, String str, int i) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putInt(m.toString(), i);
    }

    public void putIntArray(Bundle bundle, String str, int[] iArr) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putIntArray(m.toString(), iArr);
    }

    public void putIntegerArrayList(Bundle bundle, String str, ArrayList<Integer> arrayList) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putIntegerArrayList(m.toString(), arrayList);
    }

    public void putLong(Bundle bundle, String str, long j) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putLong(m.toString(), j);
    }

    public void putLongArray(Bundle bundle, String str, long[] jArr) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putLongArray(m.toString(), jArr);
    }

    public void putParcelable(Bundle bundle, String str, Parcelable parcelable) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putParcelable(m.toString(), parcelable);
    }

    public void putParcelableArray(Bundle bundle, String str, Parcelable[] parcelableArr) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putParcelableArray(m.toString(), parcelableArr);
    }

    public void putParcelableArrayList(Bundle bundle, String str, ArrayList<? extends Parcelable> arrayList) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putParcelableArrayList(m.toString(), arrayList);
    }

    public Bundle putParent(Parcelable parcelable) {
        Bundle bundle = new Bundle();
        if (parcelable != null) {
            bundle.putParcelable(this.mBaseKey + "$$SUPER", parcelable);
        }
        return bundle;
    }

    public void putSerializable(Bundle bundle, String str, Serializable serializable) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putSerializable(m.toString(), serializable);
    }

    public void putShort(Bundle bundle, String str, short s) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putShort(m.toString(), s);
    }

    public void putShortArray(Bundle bundle, String str, short[] sArr) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putShortArray(m.toString(), sArr);
    }

    public void putSparseParcelableArray(Bundle bundle, String str, SparseArray<? extends Parcelable> sparseArray) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putSparseParcelableArray(m.toString(), sparseArray);
    }

    public void putString(Bundle bundle, String str, String str2) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putString(m.toString(), str2);
    }

    public void putStringArray(Bundle bundle, String str, String[] strArr) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putStringArray(m.toString(), strArr);
    }

    public void putStringArrayList(Bundle bundle, String str, ArrayList<String> arrayList) {
        StringBuilder m = Owner.CC.m(str);
        m.append(this.mBaseKey);
        bundle.putStringArrayList(m.toString(), arrayList);
    }

    public <T> void putWithBundler(Bundle bundle, String str, T t) {
        if (t != null) {
            Bundler<?> bundler = this.mBundlers.get(str);
            StringBuilder m = Owner.CC.m(str);
            m.append(this.mBaseKey);
            bundler.put(m.toString(), t, bundle);
        }
    }
}
