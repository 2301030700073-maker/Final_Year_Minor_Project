package androidx.preference;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import androidx.lifecycle.LiveData$1;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.Collections;
import java.util.HashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PreferenceInflater {
    public final Context mContext;
    public final PreferenceManager mPreferenceManager;
    public static final Class[] CONSTRUCTOR_SIGNATURE = {Context.class, AttributeSet.class};
    public static final HashMap CONSTRUCTOR_MAP = new HashMap();
    public final Object[] mConstructorArgs = new Object[2];
    public final String[] mDefaultPackages = {Preference.class.getPackage().getName() + ".", SwitchPreference.class.getPackage().getName() + "."};

    public PreferenceInflater(Context context, PreferenceManager preferenceManager) {
        this.mContext = context;
        this.mPreferenceManager = preferenceManager;
    }

    public final Preference createItem(String str, String[] strArr, AttributeSet attributeSet) {
        Class<?> cls;
        HashMap hashMap = CONSTRUCTOR_MAP;
        Constructor<?> constructor = (Constructor) hashMap.get(str);
        if (constructor == null) {
            try {
                try {
                    ClassLoader classLoader = this.mContext.getClassLoader();
                    if (strArr != null && strArr.length != 0) {
                        cls = null;
                        ClassNotFoundException e = null;
                        for (String str2 : strArr) {
                            try {
                                cls = Class.forName(str2 + str, false, classLoader);
                                break;
                            } catch (ClassNotFoundException e2) {
                                e = e2;
                            }
                        }
                        if (cls == null) {
                            if (e != null) {
                                throw e;
                            }
                            throw new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
                        }
                        constructor = cls.getConstructor(CONSTRUCTOR_SIGNATURE);
                        constructor.setAccessible(true);
                        hashMap.put(str, constructor);
                    }
                    cls = Class.forName(str, false, classLoader);
                    constructor = cls.getConstructor(CONSTRUCTOR_SIGNATURE);
                    constructor.setAccessible(true);
                    hashMap.put(str, constructor);
                } catch (ClassNotFoundException e3) {
                    throw e3;
                }
            } catch (Exception e4) {
                InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
                inflateException.initCause(e4);
                throw inflateException;
            }
        }
        Object[] objArr = this.mConstructorArgs;
        objArr[1] = attributeSet;
        return (Preference) constructor.newInstance(objArr);
    }

    public final Preference createItemFromTag(String str, AttributeSet attributeSet) {
        try {
            return -1 == str.indexOf(46) ? createItem(str, this.mDefaultPackages, attributeSet) : createItem(str, null, attributeSet);
        } catch (InflateException e) {
            throw e;
        } catch (ClassNotFoundException e2) {
            InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class (not found)" + str);
            inflateException.initCause(e2);
            throw inflateException;
        } catch (Exception e3) {
            InflateException inflateException2 = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
            inflateException2.initCause(e3);
            throw inflateException2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4, types: [androidx.preference.Preference, androidx.preference.PreferenceGroup] */
    public final PreferenceGroup inflate(XmlResourceParser xmlResourceParser, PreferenceScreen preferenceScreen) {
        int next;
        synchronized (this.mConstructorArgs) {
            AttributeSet asAttributeSet = Xml.asAttributeSet(xmlResourceParser);
            this.mConstructorArgs[0] = this.mContext;
            do {
                try {
                    try {
                        try {
                            next = xmlResourceParser.next();
                            if (next == 2) {
                                break;
                            }
                        } catch (IOException e) {
                            InflateException inflateException = new InflateException(xmlResourceParser.getPositionDescription() + ": " + e.getMessage());
                            inflateException.initCause(e);
                            throw inflateException;
                        }
                    } catch (InflateException e2) {
                        throw e2;
                    }
                } catch (XmlPullParserException e3) {
                    InflateException inflateException2 = new InflateException(e3.getMessage());
                    inflateException2.initCause(e3);
                    throw inflateException2;
                }
            } while (next != 1);
            if (next != 2) {
                throw new InflateException(xmlResourceParser.getPositionDescription() + ": No start tag found!");
            }
            ?? r2 = (PreferenceGroup) createItemFromTag(xmlResourceParser.getName(), asAttributeSet);
            if (preferenceScreen == null) {
                r2.onAttachedToHierarchy(this.mPreferenceManager);
                preferenceScreen = r2;
            }
            rInflate(xmlResourceParser, preferenceScreen, asAttributeSet);
        }
        return preferenceScreen;
    }

    public final void rInflate(XmlPullParser xmlPullParser, Preference preference, AttributeSet attributeSet) {
        long nextId;
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                return;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if ("intent".equals(name)) {
                    try {
                        preference.mIntent = Intent.parseIntent(this.mContext.getResources(), xmlPullParser, attributeSet);
                    } catch (IOException e) {
                        XmlPullParserException xmlPullParserException = new XmlPullParserException("Error parsing preference");
                        xmlPullParserException.initCause(e);
                        throw xmlPullParserException;
                    }
                } else if ("extra".equals(name)) {
                    Resources resources = this.mContext.getResources();
                    Bundle bundle = preference.mExtras;
                    if (bundle == null) {
                        bundle = new Bundle();
                        preference.mExtras = bundle;
                    }
                    resources.parseBundleExtra("extra", attributeSet, bundle);
                    try {
                        int depth2 = xmlPullParser.getDepth();
                        while (true) {
                            int next2 = xmlPullParser.next();
                            if (next2 != 1 && (next2 != 3 || xmlPullParser.getDepth() > depth2)) {
                            }
                        }
                    } catch (IOException e2) {
                        XmlPullParserException xmlPullParserException2 = new XmlPullParserException("Error parsing preference");
                        xmlPullParserException2.initCause(e2);
                        throw xmlPullParserException2;
                    }
                } else {
                    Preference createItemFromTag = createItemFromTag(name, attributeSet);
                    PreferenceGroup preferenceGroup = (PreferenceGroup) preference;
                    if (!preferenceGroup.mPreferences.contains(createItemFromTag)) {
                        if (createItemFromTag.mKey != null) {
                            PreferenceGroup preferenceGroup2 = preferenceGroup;
                            while (true) {
                                PreferenceGroup preferenceGroup3 = preferenceGroup2.mParentGroup;
                                if (preferenceGroup3 == null) {
                                    break;
                                } else {
                                    preferenceGroup2 = preferenceGroup3;
                                }
                            }
                            String str = createItemFromTag.mKey;
                            if (preferenceGroup2.findPreference(str) != null) {
                                Log.e("PreferenceGroup", "Found duplicated key: \"" + str + "\". This can cause unintended behaviour, please use unique keys for every preference.");
                            }
                        }
                        int i = createItemFromTag.mOrder;
                        if (i == Integer.MAX_VALUE) {
                            if (preferenceGroup.mOrderingAsAdded) {
                                int i2 = preferenceGroup.mCurrentPreferenceOrder;
                                preferenceGroup.mCurrentPreferenceOrder = i2 + 1;
                                if (i2 != i) {
                                    createItemFromTag.mOrder = i2;
                                    PreferenceGroupAdapter preferenceGroupAdapter = createItemFromTag.mListener;
                                    if (preferenceGroupAdapter != null) {
                                        Handler handler = preferenceGroupAdapter.mHandler;
                                        LiveData$1 liveData$1 = preferenceGroupAdapter.mSyncRunnable;
                                        handler.removeCallbacks(liveData$1);
                                        handler.post(liveData$1);
                                    }
                                }
                            }
                            if (createItemFromTag instanceof PreferenceGroup) {
                                ((PreferenceGroup) createItemFromTag).mOrderingAsAdded = preferenceGroup.mOrderingAsAdded;
                            }
                        }
                        int binarySearch = Collections.binarySearch(preferenceGroup.mPreferences, createItemFromTag);
                        if (binarySearch < 0) {
                            binarySearch = (binarySearch * (-1)) - 1;
                        }
                        boolean shouldDisableDependents = preferenceGroup.shouldDisableDependents();
                        if (createItemFromTag.mParentDependencyMet == shouldDisableDependents) {
                            createItemFromTag.mParentDependencyMet = !shouldDisableDependents;
                            createItemFromTag.notifyDependencyChange(createItemFromTag.shouldDisableDependents());
                            createItemFromTag.notifyChanged();
                        }
                        synchronized (preferenceGroup) {
                            preferenceGroup.mPreferences.add(binarySearch, createItemFromTag);
                        }
                        PreferenceManager preferenceManager = preferenceGroup.mPreferenceManager;
                        String str2 = createItemFromTag.mKey;
                        if (str2 == null || !preferenceGroup.mIdRecycleCache.containsKey(str2)) {
                            nextId = preferenceManager.getNextId();
                        } else {
                            nextId = ((Long) preferenceGroup.mIdRecycleCache.get(str2)).longValue();
                            preferenceGroup.mIdRecycleCache.remove(str2);
                        }
                        createItemFromTag.mId = nextId;
                        createItemFromTag.mHasId = true;
                        try {
                            createItemFromTag.onAttachedToHierarchy(preferenceManager);
                            createItemFromTag.mHasId = false;
                            if (createItemFromTag.mParentGroup != null) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("This preference already has a parent. You must remove the existing parent before assigning a new one.");
                                return;
                            }
                            createItemFromTag.mParentGroup = preferenceGroup;
                            if (preferenceGroup.mAttachedToHierarchy) {
                                createItemFromTag.onAttached();
                            }
                            PreferenceGroupAdapter preferenceGroupAdapter2 = preferenceGroup.mListener;
                            if (preferenceGroupAdapter2 != null) {
                                Handler handler2 = preferenceGroupAdapter2.mHandler;
                                LiveData$1 liveData$12 = preferenceGroupAdapter2.mSyncRunnable;
                                handler2.removeCallbacks(liveData$12);
                                handler2.post(liveData$12);
                            }
                        } catch (Throwable th) {
                            createItemFromTag.mHasId = false;
                            throw th;
                        }
                    }
                    rInflate(xmlPullParser, createItemFromTag, attributeSet);
                }
            }
        }
    }
}
