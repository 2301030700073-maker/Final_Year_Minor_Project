package com.amazonaws.handlers;

import com.amazonaws.AmazonClientException;
import com.amazonaws.util.StringUtils;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class HandlerChainFactory {
    /* renamed from: do, reason: not valid java name */
    public final ArrayList m5023do(Class cls, String str) {
        BufferedReader bufferedReader;
        Class<?> cls2;
        ArrayList arrayList = new ArrayList();
        try {
            try {
                InputStream resourceAsStream = getClass().getResourceAsStream(str);
                if (resourceAsStream == null) {
                    return arrayList;
                }
                bufferedReader = new BufferedReader(new InputStreamReader(resourceAsStream, StringUtils.f9077do));
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused) {
                            }
                            return arrayList;
                        }
                        String trim = readLine.trim();
                        if (!trim.equals(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) {
                            int i = 2;
                            int i2 = 0;
                            Class[] clsArr = {cls, getClass()};
                            while (true) {
                                if (i2 >= i) {
                                    cls2 = null;
                                    break;
                                }
                                ClassLoader classLoader = clsArr[i2].getClassLoader();
                                if (classLoader != null) {
                                    try {
                                        cls2 = classLoader.loadClass(trim);
                                        break;
                                    } catch (ClassNotFoundException unused2) {
                                        continue;
                                    }
                                }
                                i2++;
                            }
                            if (cls2 == null) {
                                ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
                                if (contextClassLoader != null) {
                                    try {
                                        cls2 = contextClassLoader.loadClass(trim);
                                    } catch (ClassNotFoundException unused3) {
                                    }
                                }
                                cls2 = null;
                            }
                            if (cls2 == null) {
                                cls2 = Class.forName(trim);
                            }
                            Object newInstance = cls2.newInstance();
                            if (!cls.isInstance(newInstance)) {
                                throw new AmazonClientException("Unable to instantiate request handler chain for client.  Listed request handler ('" + trim + "') does not implement the " + cls + " API.");
                            }
                            if (cls == RequestHandler2.class) {
                                arrayList.add((RequestHandler2) newInstance);
                            } else {
                                if (cls != RequestHandler.class) {
                                    throw new IllegalStateException();
                                }
                                arrayList.add(new RequestHandler2Adaptor((RequestHandler) newInstance));
                            }
                        }
                    } catch (Exception e) {
                        e = e;
                        throw new AmazonClientException("Unable to instantiate request handler chain for client: " + e.getMessage(), e);
                    } catch (Throwable th) {
                        th = th;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused4) {
                            }
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = null;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }
}
