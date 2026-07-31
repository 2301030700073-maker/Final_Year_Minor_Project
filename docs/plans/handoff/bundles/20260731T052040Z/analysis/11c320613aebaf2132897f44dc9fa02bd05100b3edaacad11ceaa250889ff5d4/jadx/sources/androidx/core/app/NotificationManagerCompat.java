package androidx.core.app;

import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Parcel;
import android.os.RemoteException;
import android.provider.Settings;
import android.support.v4.app.INotificationSideChannel;
import android.util.Log;
import androidx.compose.ui.Modifier;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NotificationManagerCompat {
    public static String sEnabledNotificationListeners;
    public static SideChannelManager sSideChannelManager;
    public final Context mContext;
    public final NotificationManager mNotificationManager;
    public static final Object sEnabledNotificationListenersLock = new Object();
    public static HashSet sEnabledNotificationListenerPackages = new HashSet();
    public static final Object sLock = new Object();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class NotifyTask {
        public final int id;
        public final Notification notif;
        public final String packageName;

        public NotifyTask(String str, int i, Notification notification) {
            this.packageName = str;
            this.id = i;
            this.notif = notification;
        }

        public final void send(INotificationSideChannel iNotificationSideChannel) {
            String str = this.packageName;
            int i = this.id;
            Notification notification = this.notif;
            INotificationSideChannel.Stub.Proxy proxy = (INotificationSideChannel.Stub.Proxy) iNotificationSideChannel;
            proxy.getClass();
            Parcel obtain = Parcel.obtain();
            try {
                obtain.writeInterfaceToken(INotificationSideChannel.DESCRIPTOR);
                obtain.writeString(str);
                obtain.writeInt(i);
                obtain.writeString(null);
                obtain.writeTypedObject(notification, 0);
                if (proxy.mRemote.transact(1, obtain, null, 1)) {
                } else {
                    throw new RemoteException("Method notify is unimplemented.");
                }
            } finally {
                obtain.recycle();
            }
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("NotifyTask[packageName:");
            sb.append(this.packageName);
            sb.append(", id:");
            return Modifier.CC.m(sb, this.id, ", tag:null]");
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ServiceConnectedEvent {
        public final ComponentName componentName;
        public final IBinder iBinder;

        public ServiceConnectedEvent(ComponentName componentName, IBinder iBinder) {
            this.componentName = componentName;
            this.iBinder = iBinder;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SideChannelManager implements Handler.Callback, ServiceConnection {
        public final Context mContext;
        public final Handler mHandler;
        public final HashMap mRecordMap = new HashMap();
        public Set mCachedEnabledPackages = new HashSet();

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class ListenerRecord {
            public final ComponentName componentName;
            public INotificationSideChannel service;
            public boolean bound = false;
            public final ArrayDeque taskQueue = new ArrayDeque();
            public int retryCount = 0;

            public ListenerRecord(ComponentName componentName) {
                this.componentName = componentName;
            }
        }

        public SideChannelManager(Context context) {
            this.mContext = context;
            HandlerThread handlerThread = new HandlerThread("NotificationManagerCompat");
            handlerThread.start();
            this.mHandler = new Handler(handlerThread.getLooper(), this);
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i = message.what;
            INotificationSideChannel iNotificationSideChannel = null;
            Context context = this.mContext;
            HashMap hashMap = this.mRecordMap;
            if (i == 0) {
                NotifyTask notifyTask = (NotifyTask) message.obj;
                Set enabledListenerPackages = NotificationManagerCompat.getEnabledListenerPackages(context);
                if (!enabledListenerPackages.equals(this.mCachedEnabledPackages)) {
                    this.mCachedEnabledPackages = enabledListenerPackages;
                    List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
                    HashSet hashSet = new HashSet();
                    for (ResolveInfo resolveInfo : queryIntentServices) {
                        if (((HashSet) enabledListenerPackages).contains(resolveInfo.serviceInfo.packageName)) {
                            ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                            ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                            if (resolveInfo.serviceInfo.permission != null) {
                                Log.w("NotifManCompat", "Permission present on component " + componentName + ", not adding listener record.");
                            } else {
                                hashSet.add(componentName);
                            }
                        }
                    }
                    Iterator it = hashSet.iterator();
                    while (it.hasNext()) {
                        ComponentName componentName2 = (ComponentName) it.next();
                        if (!hashMap.containsKey(componentName2)) {
                            if (Log.isLoggable("NotifManCompat", 3)) {
                                Log.d("NotifManCompat", "Adding listener record for " + componentName2);
                            }
                            hashMap.put(componentName2, new ListenerRecord(componentName2));
                        }
                    }
                    Iterator it2 = hashMap.entrySet().iterator();
                    while (it2.hasNext()) {
                        Map.Entry entry = (Map.Entry) it2.next();
                        if (!hashSet.contains(entry.getKey())) {
                            if (Log.isLoggable("NotifManCompat", 3)) {
                                Log.d("NotifManCompat", "Removing listener record for " + entry.getKey());
                            }
                            ListenerRecord listenerRecord = (ListenerRecord) entry.getValue();
                            if (listenerRecord.bound) {
                                context.unbindService(this);
                                listenerRecord.bound = false;
                            }
                            listenerRecord.service = null;
                            it2.remove();
                        }
                    }
                }
                for (ListenerRecord listenerRecord2 : hashMap.values()) {
                    listenerRecord2.taskQueue.add(notifyTask);
                    processListenerQueue(listenerRecord2);
                }
            } else if (i == 1) {
                ServiceConnectedEvent serviceConnectedEvent = (ServiceConnectedEvent) message.obj;
                ComponentName componentName3 = serviceConnectedEvent.componentName;
                IBinder iBinder = serviceConnectedEvent.iBinder;
                ListenerRecord listenerRecord3 = (ListenerRecord) hashMap.get(componentName3);
                if (listenerRecord3 != null) {
                    int i2 = INotificationSideChannel.Stub.$r8$clinit;
                    if (iBinder != null) {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface(INotificationSideChannel.DESCRIPTOR);
                        if (queryLocalInterface == null || !(queryLocalInterface instanceof INotificationSideChannel)) {
                            INotificationSideChannel.Stub.Proxy proxy = new INotificationSideChannel.Stub.Proxy();
                            proxy.mRemote = iBinder;
                            iNotificationSideChannel = proxy;
                        } else {
                            iNotificationSideChannel = (INotificationSideChannel) queryLocalInterface;
                        }
                    }
                    listenerRecord3.service = iNotificationSideChannel;
                    listenerRecord3.retryCount = 0;
                    processListenerQueue(listenerRecord3);
                    return true;
                }
            } else if (i == 2) {
                ListenerRecord listenerRecord4 = (ListenerRecord) hashMap.get((ComponentName) message.obj);
                if (listenerRecord4 != null) {
                    if (listenerRecord4.bound) {
                        context.unbindService(this);
                        listenerRecord4.bound = false;
                    }
                    listenerRecord4.service = null;
                    return true;
                }
            } else {
                if (i != 3) {
                    return false;
                }
                ListenerRecord listenerRecord5 = (ListenerRecord) hashMap.get((ComponentName) message.obj);
                if (listenerRecord5 != null) {
                    processListenerQueue(listenerRecord5);
                    return true;
                }
            }
            return true;
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Connected to service " + componentName);
            }
            this.mHandler.obtainMessage(1, new ServiceConnectedEvent(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Disconnected from service " + componentName);
            }
            this.mHandler.obtainMessage(2, componentName).sendToTarget();
        }

        public final void processListenerQueue(ListenerRecord listenerRecord) {
            boolean z;
            ArrayDeque arrayDeque = listenerRecord.taskQueue;
            ComponentName componentName = listenerRecord.componentName;
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Processing component " + componentName + ", " + arrayDeque.size() + " queued tasks");
            }
            if (arrayDeque.isEmpty()) {
                return;
            }
            if (listenerRecord.bound) {
                z = true;
            } else {
                Intent component = new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(componentName);
                Context context = this.mContext;
                boolean bindService = context.bindService(component, this, 33);
                listenerRecord.bound = bindService;
                if (bindService) {
                    listenerRecord.retryCount = 0;
                } else {
                    Log.w("NotifManCompat", "Unable to bind to listener " + componentName);
                    context.unbindService(this);
                }
                z = listenerRecord.bound;
            }
            if (!z || listenerRecord.service == null) {
                scheduleListenerRetry(listenerRecord);
                return;
            }
            while (true) {
                NotifyTask notifyTask = (NotifyTask) arrayDeque.peek();
                if (notifyTask == null) {
                    break;
                }
                try {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Sending task " + notifyTask);
                    }
                    notifyTask.send(listenerRecord.service);
                    arrayDeque.remove();
                } catch (DeadObjectException unused) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Remote service has died: " + componentName);
                    }
                } catch (RemoteException e) {
                    Log.w("NotifManCompat", "RemoteException communicating with " + componentName, e);
                }
            }
            if (arrayDeque.isEmpty()) {
                return;
            }
            scheduleListenerRetry(listenerRecord);
        }

        public final void scheduleListenerRetry(ListenerRecord listenerRecord) {
            ComponentName componentName = listenerRecord.componentName;
            ArrayDeque arrayDeque = listenerRecord.taskQueue;
            Handler handler = this.mHandler;
            if (handler.hasMessages(3, componentName)) {
                return;
            }
            int i = listenerRecord.retryCount;
            int i2 = i + 1;
            listenerRecord.retryCount = i2;
            if (i2 <= 6) {
                int i3 = (1 << i) * 1000;
                if (Log.isLoggable("NotifManCompat", 3)) {
                    Log.d("NotifManCompat", "Scheduling retry for " + i3 + " ms");
                }
                handler.sendMessageDelayed(handler.obtainMessage(3, componentName), i3);
                return;
            }
            Log.w("NotifManCompat", "Giving up on delivering " + arrayDeque.size() + " tasks to " + componentName + " after " + listenerRecord.retryCount + " retries");
            arrayDeque.clear();
        }
    }

    public NotificationManagerCompat(Context context) {
        this.mContext = context;
        this.mNotificationManager = (NotificationManager) context.getSystemService("notification");
    }

    public static Set getEnabledListenerPackages(Context context) {
        HashSet hashSet;
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        synchronized (sEnabledNotificationListenersLock) {
            if (string != null) {
                try {
                    if (!string.equals(sEnabledNotificationListeners)) {
                        String[] split = string.split(":", -1);
                        HashSet hashSet2 = new HashSet(split.length);
                        for (String str : split) {
                            ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
                            if (unflattenFromString != null) {
                                hashSet2.add(unflattenFromString.getPackageName());
                            }
                        }
                        sEnabledNotificationListenerPackages = hashSet2;
                        sEnabledNotificationListeners = string;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            hashSet = sEnabledNotificationListenerPackages;
        }
        return hashSet;
    }

    public final boolean areNotificationsEnabled() {
        Method method;
        Integer num;
        if (Build.VERSION.SDK_INT >= 24) {
            return ServiceCompat$Api24Impl.areNotificationsEnabled(this.mNotificationManager);
        }
        Context context = this.mContext;
        AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String packageName = context.getApplicationContext().getPackageName();
        int i = applicationInfo.uid;
        try {
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            Class<?> cls2 = Integer.TYPE;
            method = cls.getMethod("checkOpNoThrow", cls2, cls2, String.class);
            num = (Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class);
            num.getClass();
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
        }
        return ((Integer) method.invoke(appOpsManager, num, Integer.valueOf(i), packageName)).intValue() == 0;
    }

    public final void notify(int i, Notification notification) {
        Bundle bundle = notification.extras;
        if (bundle == null || !bundle.getBoolean("android.support.useSideChannel")) {
            this.mNotificationManager.notify(null, i, notification);
            return;
        }
        NotifyTask notifyTask = new NotifyTask(this.mContext.getPackageName(), i, notification);
        synchronized (sLock) {
            try {
                if (sSideChannelManager == null) {
                    sSideChannelManager = new SideChannelManager(this.mContext.getApplicationContext());
                }
                sSideChannelManager.mHandler.obtainMessage(0, notifyTask).sendToTarget();
            } catch (Throwable th) {
                throw th;
            }
        }
        this.mNotificationManager.cancel(null, i);
    }
}
