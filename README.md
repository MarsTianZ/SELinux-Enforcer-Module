# 🛡️ SELinux Enforcer for Custom ROMs

A simple and essential KernelSU/Magisk module designed to enforce the SELinux security policy on custom ROMs and devices where it defaults to Permissive mode.

## ✨ Why You Need This Module

On a secure, unmodded Android device, the SELinux (Security-Enhanced Linux) status must be **Enforcing**. Many custom kernels or bootloaders may default to **Permissive** mode for compatibility or ease of modification.

The **Permissive** state is a critical red flag that bypasses security checks and often leads to root detection failures in security-sensitive applications (such as banking apps, payment systems, and streaming services).

This module ensures your device operates under the required security standards by forcing SELinux to **Enforcing** mode during the boot process.

## 📝 SELinux Explained

SELinux is a mandatory access control (MAC) security mechanism implemented in the Android kernel. It strictly limits what actions different applications and system components are allowed to perform.

### **The Three SELinux Modes**

| Mode | Status | Description | Advantage |
| :--- | :--- | :--- | :--- |
| **Enforcing** | **Active & Enforced** | The policy is active and strictly **blocks** any prohibited access attempts. | **Maximum Security.** Required to pass most system integrity checks (like banking apps and Strong Integrity). |
| **Permissive** | **Active & Logged** | The policy is active but does not **block** prohibited access; it only logs the attempt. | **Flexibility for Modding.** Easier for developers/modders to diagnose issues without hard blocks. (But a **MAJOR** security flag). |
| **Disabled** | **Inactive** | The SELinux policy is completely off (rarely seen in modern Android). | N/A |

### **Module Function**

This module automatically executes the command `/system/bin/setenforce 1` during the early boot stage, ensuring your SELinux status is correctly set to **Enforcing** before security-sensitive applications initialize.

## 🛠️ Installation & Compatibility

### **Supported Root Managers**

| Manager | Status | Notes |
| :--- | :--- | :--- |
| **KernelSU** | **✅ Fully Supported** | Designed primarily for KernelSU's `post-fs-data` or `service` script execution. |
| **Magisk** | **✅ Likely Supported** | Should work by standard Magisk module template execution. |

### **Supported Android Versions**

This module relies on core Android/Linux kernel functionality and is expected to work across a wide range of versions:

* **Android 11** and newer (Tested and expected to work on **Android 16**).

### **Installation Steps**

1.  Download the latest stable release: **[SELinux_Enforcer_v1.0.zip (Direct Download)](link_yang_anda_salin)**
2.  Open your Root Manager application (**KernelSU Manager** or **Magisk Manager**).
3.  Navigate to the **Modules** section.
4.  Install the downloaded ZIP file.
5.  **Reboot** your device.
6.  *Verification:* Open a Terminal Emulator and run `getenforce`. The result must be **Enforcing**.

---

## ✒️ Author & Credits

| Category | Details |
| :--- | :--- |
| **Author** | MarsTianZ |
| **Source Code** | [Link to your GitHub repo here] |
| **Credits** | The core technical insight and module structure assistance provided by **Gemini (Google)**. |

---

Best of luck with your module development and sharing on GitHub! Happy modding!